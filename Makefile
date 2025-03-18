# Charge les variables d'environnement
include .env
export $(shell sed 's/=.*//' .env)

# Lancement des services
up:
	docker network inspect sdi_apps >/dev/null 2>&1 || docker network create --subnet=172.24.0.0/16 --driver bridge sdi_apps
	docker-compose up -d

down:
	docker-compose down

restart:
	docker-compose restart

logs:
	docker-compose logs -f

ps:
	docker-compose ps

clean:
	docker system prune -a