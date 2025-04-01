from flask import Flask
from flask import render_template
app = Flask(__name__)

@app.route('/')
@app.route("/index")
def starting_page():

    return """
    <html>
    <head>
    <p>Second commit </p>
    </head>
    </html>
    """

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)


from app import app
