from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def root():
    return {"message": "hello yash,this is from app2"}


@app.get("/ping")
def ping():
    return {"message": "Pong from App 2"}
