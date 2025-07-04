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

# Public GCP bucket (must end with '/')
GCP_BUCKET_URL=https://storage.googleapis.com/YOUR_BUCKET_NAME/

# Optional: PostgreSQL container (for mock internal services)
PG_HOST=localhost
PG_PORT=5432
PG_USER=your_db_username
PG_DB=your_db_name
PG_PASS=your_secure_password
```

## Then start the project with Docker Compose
```bash
docker-compose up --build
```
---

## 📁 Current Project Structure
```bash
nginx-cdn/
├── docker-compose.yml
├── .env.example            # Example environment variables
├── nginx/
│   ├── nginx.conf          # Nginx config using env vars
│   └── cache/              # Cache storage (ignored by Git)
├── start.sh(Upcoming)      # Entrypoint script for envsubst
├── data/                   # Proxy Manager data (ignored)
├── postgres/               # Optional DB data (ignored)
├── letsencrypt/            # SSL (ignored)
└── README.md
```
