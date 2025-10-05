# MesoShop - OpenCart 4.1.0.3 E-Commerce Platform

Modern e-commerce platform powered by OpenCart 4.1.0.3, containerized with Docker Compose for easy deployment and development.

## 🚀 Quick Start

### Prerequisites

- Docker Desktop
- Docker Compose
- 4GB+ RAM available
- Ports 80, 3306, 8080 available

### Installation

```bash
# Clone the repository
git clone https://github.com/evgenygurin/mesoshop.git
cd mesoshop

# Start the containers
docker-compose up -d

# Check containers status
docker-compose ps
```

### Access Points

- **Store Front**: <http://localhost>
- **Admin Panel**: <http://localhost/admin>
- **Database Manager (Adminer)**: <http://localhost:8080>

### Default Credentials

**Admin Panel:**

- Username: `admin`
- Password: `admin`

⚠️ **IMPORTANT**: Change default credentials after first login!

## 📁 Project Structure

```bash
mesoshop/
├── docker-compose.yml      # Docker services configuration
├── .env                    # Environment variables (not in git)
├── tools/                  # Docker build files
│   └── Dockerfile         # PHP 8.2 + Apache image
├── upload/                 # OpenCart application files
│   ├── admin/            # Admin panel
│   ├── catalog/          # Store frontend
│   ├── image/            # Product images
│   └── system/           # Core system files
└── docs/                   # Documentation
```

## 🐳 Docker Services

### OpenCart Container

- **Image**: Custom PHP 8.2-Apache
- **Port**: 80
- **Volume**: `./upload:/var/www/html`

### MariaDB Container

- **Image**: mariadb:10.11 (ARM64 compatible)
- **Port**: 3306
- **Volume**: `mysql-data` (persistent)

### Adminer Container

- **Image**: adminer:latest
- **Port**: 8080

## 📝 Common Commands

```bash
# Start containers
docker-compose up -d

# Stop containers
docker-compose down

# View logs
docker-compose logs -f opencart

# Restart services
docker-compose restart

# Database backup
docker exec mesoshop-mysql mysqldump -u opencart -popencart_db_pass opencart > backup.sql
```

## 🔒 Security (Production)

1. Change default passwords in `.env`
2. Remove install directory: `rm -rf upload/install`
3. Rename admin folder
4. Enable HTTPS
5. Keep OpenCart updated

## 📦 OpenCart Version

- **Version**: 4.1.0.3
- **PHP**: 8.2.29
- **Apache**: 2.4.65
- **Database**: MariaDB 10.11

## 📚 Resources

- [OpenCart Official Documentation](https://docs.opencart.com/)
- [OpenCart GitHub](https://github.com/opencart/opencart)
- [OpenCart Forums](https://forum.opencart.com/)

---

**Built with ❤️ using OpenCart and Docker**
