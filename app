from embeddings import model
from retrieval import retrieve
from prompt import build_prompt
from vector_store import index
from ingestion import chunks
from fastApi import FastAPI

def answer_question(question):
results = retrieve{
question,
model,
index,
chunks,
top_k=5,
)

if not results:
return "Insufficient approved information"

context = build_prompt(
context,
question
)

answer = generate_answer(
prompt
)
return answer

question = input(
    "Ask a banking question: "
)

answer = answer_question(
    question
)

print(answer)

app = FastApi()
@app.get("/")
def home():
return{
message:"Banking AI assistant API"
}
@app.get("/customer/{customer_ID}")
def get_customer(customer_ID:str):


