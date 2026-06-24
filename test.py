from flask import *
# initialize the application
app= Flask(__name__)
# define rout/ endpoint
@app.route("/api/home")
# define the function
def home():
    return jsonify({ " message":"welcome home"})
@app.route("/api/services")
def services():
    return jsonify({"message":"welome to services"})
@app.route("/api/about")
def about():
    return jsonify({"message":"welome to about"})
@app.route("/api/contact")
def contact():
    return jsonify({"message": "contact us for more information"})
@app.route("/api/products")
def products():
    return jsonify({"message":"products and services are available"})
@app.route("/api/students")
def students():
    return jsonify({"message":"lists of students"})
@app.route("/api/courses")
def course():
    return jsonify({"message":"course offered"})
@app.route("/api/teachers")
def teachers():
    return jsonify({"message":"list of teachers"})
@app.route("/api/news")
def news():
    return jsonify({"messsage":"latest news updates"})
@app.route("/api/gallery")
def gallery():
    return jsonify({"message":"gallery images"})
@app.route("/api/faq")
def faq():
    return jsonify({"message":"frequently asked questions"})
@app.route("/api/profile")
def profile():
    return jsonify({"message":"student profile information"})
@app.route("/api?events")
def events():
    return jsonify({"message":"upcoming events"})
@app.route("/api/library")
def library():
    return jsonify({"message":"library resources availale"})
@app.route("/api/addition",methods=["post"])
def addition():
    number1=request.form["number1"]
    number2=request.form["number2"]
    answer=int(number1)+int(number2)
    return jsonify({"answer":answer})
#subtractionffffffffffffffffffffffffffffff
@app.route("/api/subtraction",methods=["post"])
def subtraction():
    number1=request.form["number1"]
    number2=request.form["number2"]
    answer=int(number1)-int(number2)

    return jsonify({"answer":answer})
#multiplication
@app.route("/api/multiplication",methods=["post"])
def multiplication():
    number1=request.form["number1"]
    number2=request.form["number2"]
    answer=int(number1)*int(number2)

    return jsonify({"answer":answer})
# division fffffffffffffffffffffffffffffffff
@app.route("/api/division",methods=["post"])
def division():
    number1=request.form["number1"]
    number2=request.form["number2"]
    answer=int(number1)/int(number2)

    return jsonify({"answer":answer})










# run the application
app.run(debug=True)
