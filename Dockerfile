# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

# Expose the port your Flask app runs on
EXPOSE 5000

# Run the app with Gunicorn
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:5000"]
