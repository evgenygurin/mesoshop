# MesoShop - Troubleshooting Guide

Common issues and solutions for MesoShop (OpenCart 4.1.0.3 Docker setup).

## 🔍 Quick Diagnostics

```bash
# Check container status
make status

# View logs
make logs

# Check if containers are running
docker-compose ps

# Test database connection
docker exec mesoshop-mysql mysqladmin ping -h localhost
```

---

## 🚨 Common Issues

### 1. Port Already in Use

**Error:**

```text
Error starting userland proxy: listen tcp4 0.0.0.0:80: bind: address already in use
```

**Cause:** Another service is using port 80, 3306, or 8080

**Solutions:**

**Option A: Change ports in `.env`**

```bash
# Edit .env file
HTTP_PORT=8080        # Change from 80 to 8080
DB_EXPOSE_PORT=33060  # Change from 3306
ADMINER_PORT=8081     # Change from 8080

# Restart containers
make restart
```

**Option B: Find and stop conflicting service**

```bash
# macOS: Find process using port 80
sudo lsof -i :80

# Linux: Find process using port 80
sudo netstat -tulpn | grep :80

# Stop the conflicting service (example: Apache)
sudo apachectl stop
```

---

### 2. Database Connection Failed

**Error:**

```text
Warning: mysqli_connect(): (HY000/2002): Connection refused
SQLSTATE[HY000] [2002] Connection refused
```

**Symptoms:**

- White screen on store homepage
- Can't access admin panel
- "Database connection error" messages

**Solutions:**

**Step 1: Check MySQL container**

```bash
# Check if MySQL is running
docker-compose ps mysql

# Check MySQL logs
docker-compose logs mysql

# Check if MySQL is healthy
docker exec mesoshop-mysql mysqladmin ping -h localhost
```

**Step 2: Wait for MySQL to be ready**

MySQL takes 10-30 seconds to initialize on first start.

```bash
# Watch MySQL logs until you see "ready for connections"
docker-compose logs -f mysql
```

**Step 3: Verify credentials**

```bash
# Check .env file has correct credentials
cat .env | grep MYSQL

# Test database connection manually
docker exec -it mesoshop-mysql mysql \
  -u opencart -popencart_db_pass opencart
```

**Step 4: Recreate config files**

```bash
# Remove existing config files
rm -f upload/config.php upload/admin/config.php

# Restart OpenCart (will regenerate configs)
docker-compose restart opencart
```

---

### 3. Installation Loop

**Symptoms:**

- Always redirected to `/install/`
- Installation page appears even after completing setup
- "install.lock" warning

**Solutions:**

```bash
# Create install.lock file to mark installation as complete
touch upload/install.lock

# Or restart containers (auto-creates lock file)
make restart

# For fresh installation, remove lock file
rm -f upload/install.lock
```

---

### 4. Permission Errors

**Error:**

```text
Warning: fopen(upload/system/storage/logs/error.log): failed to open stream: Permission denied
```

**Cause:** Docker container can't write to mounted volumes

**Solutions:**

**macOS:**

```bash
# Fix permissions on macOS
sudo chown -R $(whoami):staff ./upload
chmod -R 755 ./upload

# Or inside container
docker exec mesoshop-opencart chown -R www-data:www-data /var/www/html
```

**Linux:**

```bash
# Fix permissions on Linux
sudo chown -R 33:33 ./upload  # www-data UID:GID

# Or use current user
sudo chown -R $(id -u):$(id -g) ./upload
```

---

### 5. Blank White Screen

**Symptoms:**

- Blank white page on homepage
- No error messages
- Nothing in browser console

**Solutions:**

**Step 1: Enable error display**

```bash
# Edit system config
nano upload/system/config/default.php

# Find and change to true:
$_['error_display'] = true;
```

**Step 2: Check PHP logs**

```bash
# View OpenCart container logs
docker-compose logs opencart

# Check PHP error logs
docker exec mesoshop-opencart tail -f /var/www/html/system/storage/logs/error.log
```

**Step 3: Clear cache**

```bash
# Clear all cache
make clean

# Or manually
rm -rf upload/system/storage/cache/*
```

---

### 6. Admin Panel 404 Not Found

**Symptoms:**

- `/admin` returns 404
- Can't access admin panel

**Possible Causes & Solutions:**

**A. Admin folder was renamed (security measure)**

```bash
# Check if admin folder exists
ls -la upload/admin

# If renamed, find actual admin folder
ls -la upload/ | grep admin
```

**B. `.htaccess` not loaded**

```bash
# Check if Apache mod_rewrite is enabled (already enabled in Docker)
docker exec mesoshop-opencart apache2ctl -M | grep rewrite

# Should output: rewrite_module (shared)
```

**C. Config file points to wrong admin path**

```bash
# Check admin config
cat upload/admin/config.php | grep DIR_APPLICATION
```

---

### 7. Image Upload Fails

**Error:**

```text
Warning: imagecreatefromjpeg(): gd-jpeg: JPEG library reports unrecoverable error
```

**Cause:** Missing GD extension or corrupt image

**Solutions:**

```bash
# Check if GD is installed
docker exec mesoshop-opencart php -m | grep gd

# Rebuild container (GD is included in Dockerfile)
make rebuild

# Check image permissions
docker exec mesoshop-opencart ls -la /var/www/html/image/
```

---

### 8. Session Expired / Can't Login to Admin

**Symptoms:**

- Immediately logged out after login
- "Session expired" errors
- Admin panel redirects to login repeatedly

**Solutions:**

**Step 1: Clear session files**

```bash
# Clear session storage
rm -rf upload/system/storage/session/*

# Restart containers
make restart
```

**Step 2: Check browser cookies**

- Clear browser cookies for `localhost`
- Try in incognito/private browsing mode
- Check browser console for errors

**Step 3: Verify session configuration**

```bash
# Check session.cookie_secure is disabled for HTTP
docker exec mesoshop-opencart php -i | grep session.cookie_secure
# Should be: session.cookie_secure => Off
```

---

### 9. Container Won't Start

**Error:**

```text
ERROR: for mesoshop-opencart  Cannot start service opencart
```

**Solutions:**

**Step 1: Check logs**

```bash
docker-compose logs opencart
```

**Step 2: Remove and recreate**

```bash
# Stop all containers
docker-compose down

# Remove containers and restart
docker-compose up -d --force-recreate
```

**Step 3: Check Dockerfile**

```bash
# Rebuild from scratch
docker-compose build --no-cache opencart
docker-compose up -d
```

---

### 10. Database "Too Many Connections"

**Error:**

```text
SQLSTATE[HY000] [1040] Too many connections
```

**Solutions:**

```bash
# Check current connections
docker exec mesoshop-mysql mysql -u root -popencart_secure_2025 \
  -e "SHOW PROCESSLIST;"

# Kill sleeping connections
docker exec mesoshop-mysql mysql -u root -popencart_secure_2025 \
  -e "SHOW PROCESSLIST;" | \
  grep Sleep | awk '{print $1}' | \
  xargs -I {} docker exec mesoshop-mysql mysql -u root -popencart_secure_2025 \
    -e "KILL {};"

# Restart MySQL
docker-compose restart mysql
```

---

## 🛠️ Advanced Debugging

### Enable Debug Mode

```php
// upload/config.php
define('DEBUG', true);

// upload/admin/config.php
define('DEBUG', true);
```

### Database Direct Access

```bash
# MySQL CLI
make db-shell

# Or via Adminer web UI
open http://localhost:8080
# Server: mysql
# Username: opencart
# Password: opencart_db_pass
# Database: opencart
```

### Container Shell Access

```bash
# Access OpenCart container
make shell

# Check PHP version
php -v

# Check loaded extensions
php -m

# Check Apache config
apache2ctl -S
```

### Performance Profiling

```bash
# Check container resource usage
docker stats mesoshop-opencart mesoshop-mysql

# Check slow queries
docker exec mesoshop-mysql mysql -u root -popencart_secure_2025 \
  -e "SHOW VARIABLES LIKE 'slow_query%';"
```

---

## 🔄 Reset & Fresh Start

### Complete Reset (Nuclear Option)

⚠️ **WARNING: This deletes ALL data!**

```bash
# Stop and remove everything
docker-compose down -v

# Remove all uploaded data
rm -rf upload/system/storage/cache/*
rm -rf upload/system/storage/logs/*
rm -f upload/install.lock
rm -f upload/config.php
rm -f upload/admin/config.php

# Start fresh
docker-compose up -d

# Wait for installation to complete (check logs)
docker-compose logs -f opencart
```

### Partial Reset (Keep Database)

```bash
# Stop containers
docker-compose down

# Clear cache only
rm -rf upload/system/storage/cache/*

# Restart
docker-compose up -d
```

---

## 📊 Health Checks

```bash
# Run all health checks
make security-check

# Check production readiness
make prod-ready

# View container status
make status

# Check Docker version compatibility
docker --version
docker-compose --version
```

---

## 🆘 Getting Help

### Before Asking for Help

1. **Check logs:**

   ```bash
   make logs
   ```

2. **Search GitHub issues:**
   - [OpenCart Issues](https://github.com/opencart/opencart/issues)
   - [MesoShop Issues](https://github.com/evgenygurin/mesoshop/issues)

3. **Provide diagnostics:**

   ```bash
   # Gather diagnostic information
   docker-compose ps
   docker-compose logs --tail=50
   cat .env | grep -v PASSWORD
   ```

### Resources

- **OpenCart Documentation:** <https://docs.opencart.com/>
- **OpenCart Forums:** <https://forum.opencart.com/>
- **Docker Documentation:** <https://docs.docker.com/>
- **Project Issues:** <https://github.com/evgenygurin/mesoshop/issues>

---

## 📋 Maintenance Checklist

### Daily

- [ ] Check container status: `make status`
- [ ] Review error logs: `make logs-opencart`

### Weekly

- [ ] Create backup: `make backup`
- [ ] Clear cache: `make clean`
- [ ] Check disk space: `df -h`

### Monthly

- [ ] Update Docker images: `make update`
- [ ] Review security: `make security-check`
- [ ] Test backup restore on staging
- [ ] Update OpenCart (if new version available)

---

**💡 Tip:** Keep this file updated with solutions to new issues you encounter!
