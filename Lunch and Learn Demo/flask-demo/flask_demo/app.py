from flask import Flask
import psycopg2
import psycopg2.extras
import os

app = Flask(__name__)

@app.route('/')
def home():
    return "<p>This Is An API For BJSS Internship</p>"

@app.route('/onbench/')
def onBench():

    conn = psycopg2.connect("dbname=benchStatus user=postgres password=password")
    cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)

    cur.execute("select name from benchstatus where status='On Bench'")
    msg = cur.fetchall()

    cur.close()
    conn.close()

    return msg

@app.route('/offbench/')
def offBench():

    conn = psycopg2.connect("dbname=benchStatus user=postgres password=password")
    cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)

    cur.execute("select name from benchstatus where status='Not On Bench'")
    msg = cur.fetchall()

    cur.close()
    conn.close()

    return msg
