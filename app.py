import os
from flask import Flask
import psycopg2, lxml, PIL  # noqa: F401  -- imported to prove the wheels built

app = Flask(__name__)

@app.route("/")
def index():
    return "<!doctype html><title>DCMS fixture</title><h1>dcms-fixture-python-wheels</h1>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=int(os.environ.get("PORT", 3000)))
