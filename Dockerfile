# Estágio 1: Build
FROM python:3.11-alpine AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir --user -r requirements.txt

# Estágio 2: Produção (Enxuta)
FROM python:3.11-alpine AS runner
WORKDIR /app
