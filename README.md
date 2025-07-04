# 🌐 Nginx CDN Caching Proxy with Docker Compose

This project sets up a lightweight reverse proxy and CDN caching server using **Nginx**, **Docker Compose**, and **PostgreSQL**. It is designed to simulate a content delivery network (CDN) architecture, fetching and caching assets from a public GCP bucket, and optionally forwarding requests to a frontend server.

---

## ✨ Features

- Reverse proxy with Nginx
- CDN-style caching from public GCP Cloud Storage
- Cache control and stale revalidation (supporting HTTP 500/502/503 retry)
- Modular Docker Compose setup
- Optional PostgreSQL container for mock data
- Configurable via `.env` file

---

## ⚙️ Environment Setup

**Copy the example file and fill in your environment values**

```bash
cp .env.example .env
# .env.example

## Then start the project with Docker Compose
```bash
docker-compose up --build
