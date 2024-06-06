from flask import Blueprint, jsonify, request, render_template
from ..DB import inSessione

dati = Blueprint("dati", __name__)

@dati.route("/api/ricerca", methods=["POST"])
def RicercaAuto():
    if not inSessione(): return jsonify({"res": "non hai il permesso"}), 403
    return jsonify(ricerca)
