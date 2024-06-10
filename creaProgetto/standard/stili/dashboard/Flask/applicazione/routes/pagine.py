from flask import Blueprint, render_template, redirect, session
from ..DB import inSessione, datiTabellaUsers, statusPrinter

from random import randint

pagine = Blueprint("pagine", __name__)

sess = lambda: session.get("utente")

@pagine.route("/home")
def HOME():
    if not inSessione(): return redirect("/")
    printerSuccess = randint(0, 1000)
    printerError = int(printerSuccess*2/100)
    totalEmail = printerError+printerSuccess
    datiCardReport = {
        "error": printerError,
        "success": printerSuccess,
        "total": totalEmail
    }
    printerErrorTable = [sp for sp in statusPrinter if sp["status"] in ["PDF", "EML"]]

    return render_template("home.html", datiCardReport=datiCardReport, users=printerErrorTable) 

@pagine.route("/users")
def users():
    return render_template("users.html", users=datiTabellaUsers)



@pagine.route("/process")
def process():
    return render_template("process.html", users=statusPrinter)
