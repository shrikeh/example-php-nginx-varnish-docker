
prune:
	docker system prune -a
	docker volume rm $(docker volume ls -qf dangling=true)
