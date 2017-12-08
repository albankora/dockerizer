up:
	docker-compose up
logs:
	docker-compose logs
tail-logs:
	docker-compose logs -f
start:
	docker-compose start
stop:
	docker-compose stop
validate:
	docker-compose -f docker-compose.yml config
remove:
	docker stop `docker ps -q`
	docker rm -f `docker ps -a -q`
	docker rmi -f `docker images -q`
	docker volume prune -f
	docker network prune -f
	docker system prune -f