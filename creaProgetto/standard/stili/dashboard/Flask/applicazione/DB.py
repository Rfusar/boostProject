from flask import session
import json

with open("applicazione/users.json") as f: 
    datiTabellaUsers = json.loads(f.read())

with open("applicazione/status_printer.json") as f: 
    statusPrinter = json.loads(f.read())

def createSessione(dati):
    session["utente"] = {
        "_id": dati["_id"],
        "name": dati["name"],
        "email": dati["email"],
        "company": dati["company"],
        "role": dati["role"],
    }


def inSessione(): 
    return True if session.get("utente") else False
