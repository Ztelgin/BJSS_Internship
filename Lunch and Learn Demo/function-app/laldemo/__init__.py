import logging
import azure.functions as func

import pyodbc
import json

def main(req: func.HttpRequest) -> func.HttpResponse:
    logging.info('Python HTTP trigger function processed a request.')

    server = 'ServerURL'
    database = 'BenchStatus'
    username = 'internadmin'
    password = 'internPassword'
    driver = '{ODBC Driver 17 for SQL Server}'

    name = req.params.get('request')

    if not name:
        try:
            req_body = req.get_json()
        except ValueError:
            pass
        else:
            name = req_body.get('request')

    if name == 'onbench':
        conn = pyodbc.connect('DRIVER='+driver+';SERVER=tcp:'+server+';PORT=1433;DATABASE='+database+';UID='+username+';PWD='+ password)
        cur = conn.cursor()
        cur.execute("select FirstName, LastName from dbo.OnBench where Status='OnBench'")

        rows = cur.fetchall()
        data = []
        for row in rows:
            data.append(list(row))

        cur.close()
        conn.close()

        return func.HttpResponse(json.dumps(data))

    elif name == 'offbench':
        conn = pyodbc.connect('DRIVER='+driver+';SERVER=tcp:'+server+';PORT=1433;DATABASE='+database+';UID='+username+';PWD='+ password)
        cur = conn.cursor()
        cur.execute("select FirstName, LastName from dbo.OnBench where Status='OffBench'")

        rows = cur.fetchall()
        data = []
        for row in rows:
            data.append(list(row))

        cur.close()
        conn.close()

        return func.HttpResponse(json.dumps(data))

    else:
        return func.HttpResponse(
             "Incorrect parameters",
             status_code=200
        )
