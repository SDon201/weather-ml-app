FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Install dependencies
Copy requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt flask

# Copy the rest of the application code
Copy . .

# Open port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
