from fastapi import FastAPI

app = FastAPI()

@app.get("/{path:path}")
def handle(path: str):
    return {
        "message": "Echo... echo... echo...",
        "path": path
        }