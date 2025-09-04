from fastapi import FastAPI
import requests

app = FastAPI()


@app.get("/")
def root():
    return {"message": "hello yash, this is from app1"}


@app.get("/do_ping")
def read_root():
    try:
        response = requests.get("http://app2-service:8002/ping")
        return {"message": "Hello from App 1", "app2_response": response.json()}
    except Exception as e:
        return {"error": str(e)}
