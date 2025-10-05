# MesoShop - Development & Operations Makefile
# Modern commands for Docker-based OpenCart development

.PHONY: help start stop restart status logs shell db-shell backup restore clean rebuild init

# Default target - show help
.DEFAULT_GOAL := help

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🚀 DEVELOPMENT COMMANDS
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

help: ## Show this help message
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	@echo "🛍️  MesoShop - OpenCart 4.1.0.3 Development Commands"
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	@echo ""
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'
	@echo ""
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	@echo "📚 Quick Start:"
	@echo "  1. make init     - First-time setup (copy .env.example)"
	@echo "  2. make start    - Start all containers"
	@echo "  3. make logs     - Watch logs"
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

init: ## 🎯 First-time setup (copy .env.example to .env)
	@if [ ! -f .env ]; then \
		echo "📝 Creating .env from .env.example..."; \
		cp .env.example .env; \
		echo "✅ Done! Edit .env to customize your configuration."; \
		echo "⚠️  IMPORTANT: Change default passwords before production!"; \
	else \
		echo "⚠️  .env already exists. Skipping..."; \
		echo "💡 Delete .env first if you want to regenerate it."; \
	fi

start: ## ▶️  Start all containers
	@echo "🚀 Starting MesoShop containers..."
	docker-compose up -d
	@echo ""
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	@echo "✅ MesoShop is running!"
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	@echo "🌐 Store:     http://localhost"
	@echo "🔐 Admin:     http://localhost/admin"
	@echo "💾 Adminer:   http://localhost:8080"
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

stop: ## ⏹️  Stop all containers
	@echo "🛑 Stopping MesoShop containers..."
	docker-compose down
	@echo "✅ Stopped."

restart: ## 🔄 Restart all containers
	@echo "🔄 Restarting MesoShop..."
	docker-compose restart
	@echo "✅ Restarted."

status: ## 📊 Show container status
	@echo "📊 Container Status:"
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	docker-compose ps
	@echo ""
	@docker stats --no-stream --format "table {{.Container}}\t{{.CPUPerc}}\t{{.MemUsage}}" 2>/dev/null || true

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 📋 LOGGING & DEBUGGING
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

logs: ## 📜 Follow all container logs
	docker-compose logs -f

logs-opencart: ## 📜 Follow OpenCart logs only
	docker-compose logs -f opencart

logs-mysql: ## 📜 Follow MySQL logs only
	docker-compose logs -f mysql

shell: ## 🐚 Open shell in OpenCart container
	@echo "🐚 Opening shell in OpenCart container..."
	@echo "💡 Type 'exit' to leave the container"
	docker exec -it mesoshop-opencart bash

db-shell: ## 💾 Open MySQL shell
	@echo "💾 Opening MySQL shell..."
	@echo "💡 Type 'exit' to leave MySQL"
	docker exec -it mesoshop-mysql mysql -u opencart -popencart_db_pass opencart

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 💾 BACKUP & RESTORE
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

backup: ## 💾 Create full backup (DB + files)
	@echo "💾 Creating backup..."
	@bash scripts/backup.sh

restore: ## ♻️  Restore from backup (interactive)
	@echo "♻️  Restoring from backup..."
	@bash scripts/restore.sh

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🧹 MAINTENANCE & CLEANUP
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

clean: ## 🧹 Clear OpenCart cache
	@echo "🧹 Clearing OpenCart cache..."
	rm -rf upload/system/storage/cache/*
	rm -rf upload/system/storage/cache/template/*
	@echo "✅ Cache cleared."

clean-all: ## 🗑️  Stop containers and remove volumes (DESTRUCTIVE!)
	@echo "⚠️  WARNING: This will DELETE all data!"
	@read -p "Are you sure? Type 'yes' to confirm: " confirm; \
	if [ "$$confirm" = "yes" ]; then \
		echo "🗑️  Removing containers and volumes..."; \
		docker-compose down -v; \
		rm -f upload/install.lock; \
		echo "✅ Cleanup complete. Run 'make start' for fresh install."; \
	else \
		echo "❌ Cancelled."; \
	fi

rebuild: ## 🔨 Rebuild and restart containers
	@echo "🔨 Rebuilding containers..."
	docker-compose build --no-cache opencart
	docker-compose up -d
	@echo "✅ Rebuild complete."

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🔒 SECURITY & PRODUCTION
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

security-check: ## 🔒 Run basic security checks
	@echo "🔒 Running security checks..."
	@echo ""
	@echo "1. Checking for .env in git..."
	@if git ls-files --error-unmatch .env 2>/dev/null; then \
		echo "  ❌ CRITICAL: .env is tracked in git!"; \
		echo "     Run: git rm --cached .env"; \
	else \
		echo "  ✅ .env is properly ignored"; \
	fi
	@echo ""
	@echo "2. Checking install directory..."
	@if [ -d "upload/install" ]; then \
		echo "  ⚠️  WARNING: install/ directory exists"; \
		echo "     For production, run: rm -rf upload/install"; \
	else \
		echo "  ✅ install/ directory removed"; \
	fi
	@echo ""
	@echo "3. Checking default passwords..."
	@if grep -q "OPENCART_ADMIN_PASSWORD=admin" .env 2>/dev/null; then \
		echo "  ❌ CRITICAL: Using default admin password!"; \
		echo "     Change in .env immediately!"; \
	else \
		echo "  ✅ Admin password changed"; \
	fi
	@echo ""

prod-ready: ## 🚀 Check if ready for production
	@echo "🚀 Production Readiness Checklist:"
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	@make security-check
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	@echo "📋 Manual Checklist:"
	@echo "  [ ] Strong passwords in .env (16+ chars)"
	@echo "  [ ] HTTPS enabled"
	@echo "  [ ] Admin folder renamed"
	@echo "  [ ] Database backups configured"
	@echo "  [ ] Firewall configured"
	@echo "  [ ] SSL certificate installed"
	@echo "  [ ] Monitoring setup"
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# 🔧 UTILITIES
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

update: ## 🔄 Update Docker images
	@echo "🔄 Updating Docker images..."
	docker-compose pull
	@echo "✅ Update complete. Run 'make restart' to use new images."

version: ## ℹ️  Show version information
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	@echo "🛍️  MesoShop - OpenCart 4.1.0.3"
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	@echo "OpenCart:  4.1.0.3"
	@echo "PHP:       8.2.29"
	@echo "Apache:    2.4.65"
	@echo "MariaDB:   10.11"
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	@docker --version 2>/dev/null || echo "Docker: not installed"
	@docker-compose --version 2>/dev/null || echo "Docker Compose: not installed"
