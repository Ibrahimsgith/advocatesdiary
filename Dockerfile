
# Use Python base image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Expose port
EXPOSE 8000

# ---- For Django ----
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

# ---- For Flask ----
# Make sure your Flask app entrypoint is app.py
CMD ["python", "app.py"]
