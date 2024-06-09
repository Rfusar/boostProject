from flask import Blueprint, jsonify, request, render_template
from ..DB import inSessione, datiTabellaUsers

import calendar, datetime, random

dati = Blueprint("dati", __name__)

@dati.route("/datiGrafico", methods=["POST"])
def RicercaAuto():
    if not inSessione(): return jsonify({"res": "non hai il permesso"}), 403
    year = datetime.datetime.now().year
    month = datetime.datetime.now().month
    
    datiLine = [random.randint(600, 1000) for _ in range(7)]

    return jsonify({
        "Line": datiLine 
    })

@dati.route("/datiTabella", methods=["POST"])
def datiTabella():
    if not inSessione(): return jsonify({"res": "non hai il permesso"}), 403
    if request.json.get("element") == "users":
        for d in datiTabellaUsers:
            if "password" in d.keys():
                d.pop("password")
        
        return jsonify({"users": datiTabellaUsers})
