from fastapi import APIRouter, File, Form, UploadFile, Depends, Response
from fastapi.responses import RedirectResponse, JSONResponse
from .cookie import SessionData, backend, cookie, verifier

#MyModules

api = APIRouter()

@api.post("/routeA")
async def fetchLogin(res: Response):
    return JSONResponse(content={"res": ""}, status_code=200)

@api.post("/routeB", dependencies=[Depends(cookie)])
async def getfile(session_data: SessionData = Depends(verifier)):
    return JSONResponse(content={"res": ""}, status_code=200)
