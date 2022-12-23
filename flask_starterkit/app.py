from flask import Flask, request

flask_instance = app = Flask(__name__)


@flask_instance.route("/")
def home():
    return "Hello, Flask - Dev mode enabled!"
