from waitress import serve
from flask import Flask

app = Flask(__name__)


@app.route("/hello")
def hello():
    return "hello"


if __name__ == '__main__':
    # app.run(host='0.0.0.0', port=80)
    serve(app, host='0.0.0.0', port=80)
