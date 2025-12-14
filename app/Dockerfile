# Builder stage
FROM python:3.12-slim AS builder
WORKDIR /app

# Copy requirements first
COPY requirements.txt .

# Install Flask and dependencies into a custom folder
RUN pip install --no-cache-dir --target=/app/packages -r requirements.txt

# Copy the application code
COPY . .

# Final stage
FROM python:3.12-slim

# Create non-root user
RUN useradd -m appuser
USER appuser

WORKDIR /app

# Copy installed packages from builder
COPY --from=builder /app/packages /app/packages

# Add installed packages to Python path
ENV PYTHONPATH="/app/packages"

# Copy app files
COPY --from=builder /app /app

EXPOSE 8080
CMD ["python", "main.py"]
