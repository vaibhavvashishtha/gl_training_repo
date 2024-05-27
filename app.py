from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def hello_world():
    return render_template('test.html')

@app.route('/login')
def login():
    return "for the user to logi"

@app.route('/resgister')
def login():
    return "user to register"

if __name__ == "__main__":
    app.run(debug=True, port=5011)