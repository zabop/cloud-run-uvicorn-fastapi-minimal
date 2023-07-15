from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def resp():
    return "Hello world!"
