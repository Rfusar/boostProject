from flask import Flask

#rouets
from applicazione.routes.user import user
from applicazione.routes.pagine import pagine
from applicazione.routes.dati import dati

app = Flask(__name__)
app.secret_key = b'apikey_supersegreta'

#Errors
@app.errorhandler(404)
def page_not_found(e):
    return "<h1>Ma dove vuoi andare??</h1>", 404



#Utenza
app.register_blueprint(user)

#Pagine
app.register_blueprint(pagine)

#Api
app.register_blueprint(dati)
