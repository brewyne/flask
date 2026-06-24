from flask import*
import pymysql
#initialize the application
app=Flask(__name__)


# define theroutr/endpoint
@app.route("/api/signup",methods=["POST"])
# DEFINE THE FUNCTION
def signup():
    # get user inputs from the form 
    username=request.form["username"]
    email=request.form["email"]
    password=request.form["password"]
    phone=request.form["phone"]

    # connect to database
    connect=pymysql.connect(
    host="root",
    user="localhost",
    password="",
    database="modcomdennis"
)
    
    




#run application
app.run(debug=True)