from fastapi_sessions.frontends.implementations import SessionCookie, CookieParameters
from fastapi_sessions.session_verifier import SessionVerifier
from fastapi import HTTPException
from uuid import UUID
from fastapi_sessions.backends.implementations import InMemoryBackend
from pydantic import BaseModel

cookie_params = CookieParameters(max_age=1800)

class SessionData(BaseModel):
    email: str


cookie = SessionCookie(
    cookie_name="cookie",
    identifier="general_verifier",
    auto_error=True,
    secret_key=b"sk-xhZbOeYGGIXCHMm3HHkp4xrBTYqSWsjk40FnMFpU1OPLliTx9VJaiI8QCJ665LSV",
    cookie_params=cookie_params,
)

backend = InMemoryBackend[UUID, SessionData]()
class BasicVerifier(SessionVerifier[UUID, SessionData]):
    def __init__(
        self,
        *,
        identifier: str,
        auto_error: bool,
        backend: InMemoryBackend[UUID, SessionData],
        auth_http_exception: HTTPException,
    ):
        self._identifier = identifier
        self._auto_error = auto_error
        self._backend = backend
        self._auth_http_exception = auth_http_exception

    @property
    def identifier(self):
        return self._identifier

    @property
    def backend(self):
        return self._backend

    @property
    def auto_error(self):
        return self._auto_error

    @property
    def auth_http_exception(self):
        return self._auth_http_exception

    def verify_session(self, model: SessionData) -> bool:
        """If the session exists, it is valid"""
        return True


verifier = BasicVerifier(
    identifier="general_verifier",
    auto_error=False,
    backend=backend,
    auth_http_exception=HTTPException(status_code=403, detail="utente non loggato"),
)

