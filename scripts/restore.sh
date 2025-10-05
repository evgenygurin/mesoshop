#!/usr/bin/env bash
# MesoShop - Restore from Backup Script
# Restores database and files from a backup archive

set -euo pipefail

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# CONFIGURATION
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

BACKUP_DIR="./backups"

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
RED='\033[0;31m'
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

error() {
    echo -e "${RED}❌ ERROR: $1${NC}"
}

check_docker() {
    if ! docker ps &> /dev/null; then
        error "Docker is not running!"
        exit 1
    fi
}

check_container() {
    if ! docker ps --format '{{.Names}}' | grep -q "^${MYSQL_CONTAINER}$"; then
        error "MySQL container '${MYSQL_CONTAINER}' is not running!"
        echo "   Run: docker-compose up -d mysql"
        exit 1
    fi
}

list_backups() {
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "📦 Available Backups:"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

    if [ ! -d "${BACKUP_DIR}" ] || [ -z "$(ls -A ${BACKUP_DIR}/*.tar.gz 2>/dev/null)" ]; then
        warn "No backups found in ${BACKUP_DIR}/"
        echo ""
        echo "💡 Create a backup first: make backup"
        echo ""
        exit 1
    fi

    echo ""
    ls -1t "${BACKUP_DIR}"/*.tar.gz | while read -r backup; do
        backup_name=$(basename "$backup" .tar.gz)
        backup_size=$(du -h "$backup" | cut -f1)
        backup_date=$(stat -f "%Sm" -t "%Y-%m-%d %H:%M:%S" "$backup" 2>/dev/null || stat -c "%y" "$backup" 2>/dev/null || echo "unknown")
        echo "  📦 ${backup_name}"
        echo "     Size: ${backup_size} | Date: ${backup_date}"
        echo ""
    done
}

confirm_restore() {
    local backup_name=$1

    echo ""
    warn "⚠️  WARNING: This will REPLACE your current data!"
    echo ""
    echo "  Current data will be overwritten with backup:"
    echo "  ${backup_name}"
    echo ""
    read -p "  Type 'yes' to confirm restore: " confirm

    if [ "$confirm" != "yes" ]; then
        echo ""
        error "Restore cancelled"
        exit 1
    fi
}

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# MAIN RESTORE PROCESS
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "♻️  MesoShop Restore Script"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Pre-flight checks
log "Checking prerequisites..."
check_docker
check_container
success "Docker and containers are ready"
echo ""

# Get backup name from argument or show list
BACKUP_NAME=""

if [ $# -eq 0 ]; then
    # No argument provided - show list and prompt
    list_backups
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    read -p "Enter backup name (without .tar.gz): " BACKUP_NAME

    if [ -z "$BACKUP_NAME" ]; then
        error "No backup name provided"
        exit 1
    fi
else
    # Backup name provided as argument
    BACKUP_NAME="$1"
fi

# Remove .tar.gz extension if provided
BACKUP_NAME="${BACKUP_NAME%.tar.gz}"

BACKUP_ARCHIVE="${BACKUP_DIR}/${BACKUP_NAME}.tar.gz"
TEMP_DIR="/tmp/${BACKUP_NAME}"

# Verify backup exists
if [ ! -f "${BACKUP_ARCHIVE}" ]; then
    error "Backup not found: ${BACKUP_ARCHIVE}"
    echo ""
    list_backups
    exit 1
fi

# Confirm restore
confirm_restore "${BACKUP_NAME}"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 1. EXTRACT BACKUP
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

echo ""
log "📦 Extracting backup archive..."

# Clean temp directory if exists
rm -rf "${TEMP_DIR}"
mkdir -p "${TEMP_DIR}"

# Extract archive
tar -xzf "${BACKUP_ARCHIVE}" -C "${TEMP_DIR}"

# Find the extracted directory (handle nested structure)
EXTRACTED_DIR=$(find "${TEMP_DIR}" -mindepth 1 -maxdepth 1 -type d | head -n 1)

if [ -z "${EXTRACTED_DIR}" ]; then
    error "Could not find extracted backup directory"
    exit 1
fi

success "Backup extracted"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 2. RESTORE DATABASE
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

echo ""
log "📊 Restoring database..."

if [ ! -f "${EXTRACTED_DIR}/database.sql" ]; then
    error "Database backup not found: ${EXTRACTED_DIR}/database.sql"
    exit 1
fi

# Drop existing database and recreate
docker exec "${MYSQL_CONTAINER}" mysql \
    -u "${DB_USER}" \
    -p"${DB_PASS}" \
    -e "DROP DATABASE IF EXISTS ${DB_NAME}; CREATE DATABASE ${DB_NAME};"

# Restore database
docker exec -i "${MYSQL_CONTAINER}" mysql \
    -u "${DB_USER}" \
    -p"${DB_PASS}" \
    "${DB_NAME}" \
    < "${EXTRACTED_DIR}/database.sql"

success "Database restored"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 3. RESTORE FILES
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

echo ""
log "📁 Restoring files..."

if [ ! -d "${EXTRACTED_DIR}/files" ]; then
    warn "Files backup not found (skipping)"
else
    # Backup current files (safety measure)
    if [ -d "./upload" ]; then
        SAFETY_BACKUP="./upload.before-restore-$(date +%Y%m%d-%H%M%S)"
        log "Creating safety backup of current files..."
        cp -r ./upload "${SAFETY_BACKUP}"
        success "Safety backup: ${SAFETY_BACKUP}"
    fi

    # Restore files
    rsync -a --delete "${EXTRACTED_DIR}/files/" ./upload/

    success "Files restored"
fi

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 4. RESTORE CONFIGURATION (OPTIONAL)
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

echo ""
log "⚙️  Checking for configuration files..."

if [ -f "${EXTRACTED_DIR}/env.backup" ]; then
    warn "Found .env backup"
    read -p "  Restore .env file? (yes/no): " restore_env

    if [ "$restore_env" = "yes" ]; then
        cp "${EXTRACTED_DIR}/env.backup" ./.env
        success ".env restored"
    else
        log "Keeping current .env"
    fi
else
    log "No .env backup found (using current)"
fi

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 5. CLEANUP
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

echo ""
log "🧹 Cleaning up temporary files..."
rm -rf "${TEMP_DIR}"
success "Cleanup complete"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 6. RESTART CONTAINERS
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

echo ""
log "🔄 Restarting containers..."
docker-compose restart opencart
success "Containers restarted"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# SUMMARY
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
success "Restore completed successfully!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📦 Restored from: ${BACKUP_NAME}"
echo ""
echo "🌐 Access your restored store:"
echo "   Store:  http://localhost"
echo "   Admin:  http://localhost/admin"
echo ""
echo "💡 If you encounter issues:"
echo "   1. Check logs: docker-compose logs -f opencart"
echo "   2. Clear cache: make clean"
echo "   3. See TROUBLESHOOTING.md"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
