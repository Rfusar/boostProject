from flask import Blueprint, jsonify, request, render_template
from ..DB import inSessione

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
