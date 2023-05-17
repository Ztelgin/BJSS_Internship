import pyodbc
import json
import azure.functions as func


def main(req: func.HttpRequest) -> func.HttpResponse:

    server = 'Azure Hosted SQL'
    database = 'database'
    username = 'user'
    password = 'password'
    driver = '{ODBC Driver 17 for SQL Server}'

    office = req.params.get('office')
    role = req.params.get('role')
    if not (office and role):
        try:
            req_body = req.get_json()
        except ValueError:
            pass
        else:
            office = req_body.get('office')
            role = req_body.get('role')

    if office and role:
        conn = pyodbc.connect('DRIVER='+driver+';SERVER=tcp:'+server+';PORT=1433;DATABASE='+database+';UID='+username+';PWD='+ password)
        cur = conn.cursor()
        query = "select distinct CONCAT(e.fName, ' ', e.lName), r.title, e.status, e.email, e.about "\
                "from employee as e inner join roles as r on(e.roleId = r.ID) inner join offices as o on (e.officeId=o.O_ID) "\
                "where o.city = '" + office + "' and r.title ='" + role +"';"
        cur.execute(query)

        rows = cur.fetchall()
        data = []
        for row in rows:
            data.append(list(row))

        cur.close()
        conn.close()

        return func.HttpResponse(json.dumps(data))
    else:
        return func.HttpResponse(
             "This HTTP triggered function executed successfully. Incorrect Parameters Were Povided",
             status_code=200
        )
