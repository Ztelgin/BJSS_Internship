from flask import Flask, jsonify
import psycopg2
import psycopg2.extras

app = Flask(__name__)



@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"

@app.route("/onbench/")
def onBench():
    conn = psycopg2.connect("dbname=benchStatus user=postgres password=password")

    cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)

    cur.execute("select name from benchstatus where status='On Bench'")

    msg = cur.fetchall()

    cur.close()
    conn.close()

    return jsonify(msg)

@app.route("/offbench/")
def offBench():
    conn = psycopg2.connect("dbname=benchStatus user=postgres password=password")

    cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)

    cur.execute("select name from benchstatus where status='Not On Bench'")

    msg = cur.fetchall()

    cur.close()
    conn.close()

    return jsonify(msg)