FROM python:3.9-slim-buster

# Set the working directory
WORKDIR /app

# Copy the requirements file to the container and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the container
COPY . .

# Expose port 8000 to the host machine
EXPOSE 8000

# Set the command to start the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
