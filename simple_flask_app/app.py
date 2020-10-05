from flask import Flask
app = Flask(__name__)


@app.route('/')
def hello_world():
    return 'Hello APP'

@app.route('/api')
def hello_world():
    return 'Hello, World Giuseppe 2!'