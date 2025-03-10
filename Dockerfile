# 1️⃣ Python Base Image Use Karein
FROM python:3.11-slim  

# 2️⃣ Working Directory Set Karein
WORKDIR /app  

# 3️⃣ Sab Files Copy Karein
COPY . /app  

# 4️⃣ Dependencies Install Karein
RUN pip install --no-cache-dir uv chainlit litellm

# 5️⃣ Default Command Jab Container Run Ho
CMD ["chainlit", "run", "chatbot.py", "--port", "80", "--headless"]
