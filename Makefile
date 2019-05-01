build:
	@cp -n tests/.env.dist .env
	docker-compose pull
	docker-compose build --pull

clean:
	docker-compose down
	sudo rm -rf tests/runtime/* tests/web/assets/*
