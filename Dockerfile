FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code
COPY . .

# Expose port
EXPOSE 5000

# Command to run the app
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:5000"]
