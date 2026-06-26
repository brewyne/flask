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
    password=request.form["password"]
    email=request.form["email"]
    phone=request.form["phone"]

    # connect to database
    connection=pymysql.connect(
       host="localhost",
       user="root",
       password="",
       database="modcomdennis")

    #define the cursor
    cursor= connection.cursor()

    #define sql to insert user
    sql="INSERT INTO users(username,password,email,phone)values(%s,%s,%s,%s)"  
    #define  data coming from the form
    data=(username, password, email, phone)

    #by use of the cursor, execute the sql
    cursor.execute(sql,data)
    #commit the changes  to database
    connection.commit()

    return jsonify({"message":"user registered successfully"})
# member signin/login
# define route/endpoint
@app.route("/api/signin",methods=["post"])
#define the function
def signin():
   #get the user input from the form 
   email=request.form["email"]
   password=request.form["password"]
   #connection to database
   connection=pymysql.connect(
       host="localhost",
       user="root",
       password="",
       database="modcomdennis")
    #define the cursor
   cursor=connection.cursor(pymysql.cursors.DictCursor)
   #define sql to select users
   sql="select *from users where email=%s and password=%s"
   #define your data
   #nb its coming from step3
   data=(email,password)
   #execute/run query
   cursor.execute(sql,data)
   #wrong emailand password
   if cursor.rowcount==0:
       return jsonify({"message":"invalid imail or password"})
   #correct imail and password
   if cursor.rowcount==1:
       #fech the user
       user=cursor.fetchone()
       return jsonify({"message":"log in successful","user":user})









      

    
    


























































































































































































#run application
app.run(debug=True)