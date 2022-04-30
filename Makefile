up:
	docker-compose up -d --build

stop:
	docker-compose stop

down:
	docker-compose down

ssl-certs:
	mkcert -cert-file certs/local-cert.pem -key-file certs/local-key.pem "todo.localhost" "*.todo.localhost" "todo.local" "*.todo.local"
