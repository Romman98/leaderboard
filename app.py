from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def home():
    if request.method == 'POST':
        name = request.form['name']
        return render_template('greet.html', name=name)
    return render_template('home.html')

@app.route('/full-name')
def fullname():
    return render_template('fullname.html')

if __name__ == '__main__':
    app.run(debug=True)
