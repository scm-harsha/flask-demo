"""
waitress is a web server which works well in prod for flask
"""
from waitress import serve
from flask import Flask

app = Flask(__name__)


@app.route("/hello")
def hello():
    """
    basic hello function
    """
    return "hello harsha"


if __name__ == '__main__':
    # app.run(host='0.0.0.0', port=80)
    serve(app, host='0.0.0.0', port=80)
