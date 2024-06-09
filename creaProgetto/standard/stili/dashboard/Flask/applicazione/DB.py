from flask import session
import json

USERS= [
    {
        "email": "admin@email.com",
        "password": "admin123",
        "ruolo": "admin",
    },
    {
        "email": "utente@email.com",
        "password": "utente",
        "ruolo": "user",
    }
]

with open("applicazione/users.json") as f: 
    datiTabellaUsers = json.loads(f.read())

def createSessione(dati):
    session["utente"] = {
        "email": dati["email"],
        "ruolo": dati["ruolo"],
    }


def inSessione(): 
    return True if session.get("utente") else False
