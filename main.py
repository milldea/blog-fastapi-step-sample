from fastapi import FastAPI
# import uvicorn

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/hello/{name}")
async def say_hello(name: str):
    print("hoge")
    return {"message": f"Hello {name}"}

# if __name__ == '__main__':
#     uvicorn.run("main:app", host='0.0.0.0', port=8000, reload=True)
