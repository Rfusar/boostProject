from flask import Blueprint, request, jsonify, render_template, redirect, session
from werkzeug.security import generate_password_hash, check_password_hash
from ..DB import USERS, createSessione

user = Blueprint('user', __name__)

#GET
@user.route("/", methods=["GET"])
def login(): return render_template("login.html")

@user.route('/fetchLogout')
def logout():
    session["utente"] = None
    return redirect("/")


#POST
@user.route("/fetchLogin", methods=["POST"])
def fetchLogin():
    credenziali = {k:v for k, v in request.form.items()}
    for e in USERS:
        if credenziali["email"] == e["email"]:
            if credenziali["password"] == e["password"]:
                if e["ruolo"] in ["admin", "user"]: 
                    createSessione(e)
                    return jsonify({"res": "/home"}), 200
        
    return jsonify({"res": "email e/o password errati"}), 403 
