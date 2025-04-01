# Use a minimal Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy application files
COPY app.py requirements.txt ./

# Install dependencies
RUN pip install -r requirements.txt

# Expose the application port
EXPOSE 8080

# Run the Flask application
CMD ["python", "app.py"]
