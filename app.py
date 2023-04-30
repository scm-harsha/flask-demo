"""
waitress is a web server which works well in prod for flask
"""
from waitress import serve
from flask import Flask
import datetime

present_date = datetime.datetime.now()

app = Flask(__name__)


@app.route("/hello")
def hello():
    """
    basic hello function
    """
    return f"time: {present_date}"


if __name__ == '__main__':
    # app.run(host='0.0.0.0', port=80)
    serve(app, host='0.0.0.0', port=80)
