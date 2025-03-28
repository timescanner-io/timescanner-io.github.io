# ################## #
# ##### Docker ##### #
# ################## #

# Build the docker compose stack
build:
	docker compose build

# Start the docker compose stack
start:
	docker compose up -d

# Stop the docker compose stack
stop:
	docker compose down

logs:
	docker compose logs -f

# Run docker compose stack
run: stop build start

# ################## #
# ##### Jekyll ##### #
# ################## #

# Install the dependencies
jekyll-install:
	docker compose exec jekyll-server bundle install

# Stop Jekyll server
jekyll-stop:
	docker compose exec jekyll-server pkill -f jekyll
	
# Restart Jekyll server
jekyll-restart: jekyll-stop
	docker compose exec jekyll-server serve --host 0.0.0.0 --livereload

# ################## #
# ##### Assets ##### #
# ################## #

# Reinstall JavaScript dependencies
js-install:
	docker compose exec jekyll-server npm install