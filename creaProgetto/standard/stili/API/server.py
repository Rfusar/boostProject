from fastapi import FastAPI
from fastapi.staticfiles import StaticFiles
from fastapi.exceptions import RequestValidationError
from fastapi.exceptions import HTTPException
from fastapi.responses import RedirectResponse

from services.routes import A

app = FastAPI()

@app.exception_handler(HTTPException)
async def http_exception_handler(request, exc):
    return RedirectResponse("/")

app.include_router(ricezione_dati.api)
