# .Net Core TODO Application
Simple backend application for education purposes.

## Requirements
1. Install [Docker](https://docker.com/) and [docker-compose](https://docs.docker.com/compose/install/)
2. Install [mkcert](https://github.com/FiloSottile/mkcert) for creating trusted ssh certificates locally.

## How to run locally
1. Copy `.env.dev` file to `.env`
2. Run `mkcert -install` if you didn't have mkcert tool before.
3. Run `make ssl-certs`
4. Run `make up`

## Available links
- Traefik dashboard [here](http://proxy.todo.localhost/)
