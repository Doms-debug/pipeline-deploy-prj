import pytest
from main import app

def test_hello():
    response = app.test_client().get('/')
    assert response.staus_code == 200
    assert response.data.decode('utf-8') == "Hello DevOps!"