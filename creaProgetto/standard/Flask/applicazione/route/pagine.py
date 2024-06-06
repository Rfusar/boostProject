from flask import Blueprint, render_template, redirect, session
from ..DB import inSessione

pagine = Blueprint("pagine", __name__)

sess = lambda: session.get("utente")

@pagine.route("/home")
def HOME():
    if not inSessione(): return redirect("/")
    return render_template("home.html") 

