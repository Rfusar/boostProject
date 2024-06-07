from flask import session

USERS= [
    {
        "email": "admin@email.com",
        "pw": "admin123",
        "ruolo": "admin",
    },
    {
        "email": "utente@email.com",
        "pw": "utente",
        "ruolo": "user",
    }
]


def createSessione(dati):
    session["utente"] = {
        "email": dati["email"],
        "ruolo": dati["ruolo"],
    }


def inSessione(): 
    return True if session.get("utente") else False

