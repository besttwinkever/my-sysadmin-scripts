from fastapi import FastAPI
import os

ROOT_DIR = os.getenv('FILES_PATH')

app = FastAPI()

@app.get("/")
def get_files():
    files = [f for f in os.listdir(ROOT_DIR)] 
    return files
