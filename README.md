# Setup for running ccbv

This runs [ccbv](https://github.com/classy-python/ccbv) using docker compose.


## Usage

Run the following to start the services:

    docker compose up -d

The the following to initialize the data:

    docker compose exec ccbv python3 manage.py migrate
    docker compose exec ccbv python3 manage.py load_all_django_versions

Access http://localhost:8080 or run:

    open http://localhost:8080


## License

MIT
