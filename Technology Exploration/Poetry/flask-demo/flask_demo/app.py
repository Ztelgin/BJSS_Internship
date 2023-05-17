from flask import Flask
import pyodbc
import os

app = Flask(__name__)

server = '<server_name>.database.windows.net'
database = '<database_name>'
username = '<username>'
password = '<password>'
driver= '{ODBC Driver 17 for SQL Server}'
conn = pyodbc.connect('DRIVER=' + driver + ';SERVER=' + server + ';PORT=1433;DATABASE=' + database + ';UID=' + username + ';PWD=' + password)

@app.route('/')
def home():
    return "<p>This Is An API For BJSS Internship</p>"

@app.route('/onbench/')
def onBench():
    # conn = psycopg2.connect(
    #     host="localhost",
    #     database="benchStatus",
    #     user=os.environ['POSTGRES_USER'],
    #     password=os.environ['POSTGRES_PASSWORD']
    # )
    conn = psycopg2.connect("dbname=benchStatus user=postgres password=password")
    cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)

    cur.execute("select name from benchstatus where status='On Bench'")
    msg = cur.fetchall()

    cur.close()
    conn.close()

    return msg

@app.route('/offbench/')
def offBench():
        # conn = psycopg2.connect(
    #     host="localhost",
    #     database="benchStatus",
    #     user=os.environ['POSTGRES_USER'],
    #     password=os.environ['POSTGRES_PASSWORD']
    # )
    conn = psycopg2.connect("dbname=benchStatus user=postgres password=password")
    cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)
    
    cur.execute("select name from benchstatus where status='Not On Bench'")
    msg = cur.fetchall()

    cur.close()
    conn.close()

    return msg