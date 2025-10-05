#!/usr/bin/env bash
# MesoShop - Automated Backup Script
# Creates timestamped backups of database and files

set -euo pipefail

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# CONFIGURATION
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

BACKUP_DIR="./backups"
TIMESTAMP=$(date +%Y%m%d-%H%M%S)
BACKUP_NAME="mesoshop-backup-${TIMESTAMP}"
BACKUP_PATH="${BACKUP_DIR}/${BACKUP_NAME}"

# Docker container names
MYSQL_CONTAINER="mesoshop-mysql"

# Database credentials (from .env or defaults)
DB_USER="${MYSQL_USER:-opencart}"
DB_PASS="${MYSQL_PASSWORD:-opencart_db_pass}"
DB_NAME="${MYSQL_DATABASE:-opencart}"

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# FUNCTIONS
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

log() {
    echo -e "${BLUE}[$(date +'%H:%M:%S')]${NC} $1"
}

success() {
    echo -e "${GREEN}✅ $1${NC}"
}

warn() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

check_docker() {
    if ! docker ps &> /dev/null; then
        echo "❌ ERROR: Docker is not running!"
        exit 1
    fi
}

check_container() {
    if ! docker ps --format '{{.Names}}' | grep -q "^${MYSQL_CONTAINER}$"; then
        echo "❌ ERROR: MySQL container '${MYSQL_CONTAINER}' is not running!"
        echo "   Run: docker-compose up -d"
        exit 1
    fi
}

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# MAIN BACKUP PROCESS
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "💾 MesoShop Backup Script"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Pre-flight checks
log "Checking prerequisites..."
check_docker
check_container
success "Docker and containers are ready"

# Create backup directory
log "Creating backup directory..."
mkdir -p "${BACKUP_PATH}"
success "Backup directory: ${BACKUP_PATH}"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 1. DATABASE BACKUP
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

echo ""
log "📊 Backing up database..."

docker exec "${MYSQL_CONTAINER}" mysqldump \
    -u "${DB_USER}" \
    -p"${DB_PASS}" \
    "${DB_NAME}" \
    --single-transaction \
    --quick \
    --lock-tables=false \
    > "${BACKUP_PATH}/database.sql"

DB_SIZE=$(du -h "${BACKUP_PATH}/database.sql" | cut -f1)
success "Database backup complete (${DB_SIZE})"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 2. FILES BACKUP
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

echo ""
log "📁 Backing up files..."

# Copy upload directory (excluding cache and logs)
rsync -a \
    --exclude='system/storage/cache/*' \
    --exclude='system/storage/logs/*' \
    --exclude='image/cache/*' \
    ./upload/ "${BACKUP_PATH}/files/"

FILES_SIZE=$(du -sh "${BACKUP_PATH}/files" | cut -f1)
success "Files backup complete (${FILES_SIZE})"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 3. CONFIGURATION BACKUP
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

echo ""
log "⚙️  Backing up configuration..."

# Backup .env file (if exists)
if [ -f .env ]; then
    cp .env "${BACKUP_PATH}/env.backup"
    success "Environment config backed up"
else
    warn "No .env file found (skipping)"
fi

# Backup docker-compose.yml
if [ -f docker-compose.yml ]; then
    cp docker-compose.yml "${BACKUP_PATH}/docker-compose.yml"
fi

# Create backup manifest
cat > "${BACKUP_PATH}/MANIFEST.txt" << EOF
MesoShop Backup Manifest
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Backup Date:     $(date)
Backup Name:     ${BACKUP_NAME}
Database:        ${DB_NAME}
Database Size:   ${DB_SIZE}
Files Size:      ${FILES_SIZE}

Contents:
  - database.sql           Database dump
  - files/                 OpenCart files (upload/)
  - env.backup            Environment configuration
  - docker-compose.yml    Docker configuration
  - MANIFEST.txt          This file

Restore Instructions:
  Run: bash scripts/restore.sh ${BACKUP_NAME}
  Or:  make restore

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF

success "Manifest created"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 4. COMPRESSION (OPTIONAL)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

echo ""
log "🗜️  Compressing backup..."

cd "${BACKUP_DIR}"
tar -czf "${BACKUP_NAME}.tar.gz" "${BACKUP_NAME}"
ARCHIVE_SIZE=$(du -h "${BACKUP_NAME}.tar.gz" | cut -f1)

# Remove uncompressed directory
rm -rf "${BACKUP_NAME}"

success "Backup compressed (${ARCHIVE_SIZE})"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# CLEANUP OLD BACKUPS (keep last 10)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

cd ..
BACKUP_COUNT=$(ls -1 "${BACKUP_DIR}"/*.tar.gz 2>/dev/null | wc -l)

if [ "${BACKUP_COUNT}" -gt 10 ]; then
    echo ""
    log "🧹 Cleaning old backups (keeping last 10)..."
    ls -1t "${BACKUP_DIR}"/*.tar.gz | tail -n +11 | xargs rm -f
    success "Old backups removed"
fi

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# SUMMARY
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
success "Backup completed successfully!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📦 Backup Archive: ${BACKUP_DIR}/${BACKUP_NAME}.tar.gz"
echo "📊 Archive Size:   ${ARCHIVE_SIZE}"
echo "📁 Total Backups:  ${BACKUP_COUNT}"
echo ""
echo "💡 To restore this backup, run:"
echo "   bash scripts/restore.sh ${BACKUP_NAME}"
echo "   or: make restore"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
