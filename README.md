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

# Copy environment template
make init
# Or manually: cp .env.example .env

# Start the containers
make start
# Or: docker-compose up -d

# Check containers status
make status
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

**Using Makefile (Recommended):**

```bash
# First-time setup
make init          # Copy .env.example to .env

# Container management
make start         # Start all containers
make stop          # Stop all containers
make restart       # Restart containers
make status        # Show container status

# Logging & debugging
make logs          # Follow all logs
make shell         # Open shell in OpenCart container
make db-shell      # Open MySQL shell

# Backup & restore
make backup        # Create full backup (DB + files)
make restore       # Restore from backup

# Maintenance
make clean         # Clear OpenCart cache
make rebuild       # Rebuild containers
make update        # Update Docker images

# Security
make security-check    # Run security checks
make prod-ready        # Production readiness checklist

# Help
make help          # Show all available commands
```

**Using docker-compose directly:**

```bash
# Start containers
docker-compose up -d

# Stop containers
docker-compose down

# View logs
docker-compose logs -f opencart

# Restart services
docker-compose restart
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

## 🆘 Troubleshooting

Having issues? Check the comprehensive troubleshooting guide:

**[📖 TROUBLESHOOTING.md](TROUBLESHOOTING.md)** - Solutions for common problems

Quick fixes:

```bash
# Can't connect to database?
make restart

# White screen / errors?
make clean

# Need fresh start?
make clean-all  # ⚠️ Deletes all data!
```

## 📚 Documentation

- **[INSTALL.md](INSTALL.md)** - Traditional installation instructions
- **[UPGRADE.md](UPGRADE.md)** - Upgrade guide for existing installations
- **[TROUBLESHOOTING.md](TROUBLESHOOTING.md)** - Problem-solving guide
- **[CLAUDE.md](CLAUDE.md)** - Developer reference & automation

## 📚 External Resources

- [OpenCart Official Documentation](https://docs.opencart.com/)
- [OpenCart GitHub](https://github.com/opencart/opencart)
- [OpenCart Forums](https://forum.opencart.com/)
- [Docker Documentation](https://docs.docker.com/)

---

**Built with ❤️ using OpenCart and Docker**
