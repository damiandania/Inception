<p>
<img src="https://github.com/damiandania/damiandania/blob/main/Pics/Inception.png"
	alt="Project pic" width="150" height="150"/>
</p>

# Inception

This project focuses on mastering Docker and Docker Compose. The task is to create a small network of three Docker containers: one for Nginx, one for WordPress, and one for MariaDB. These containers must interact within a Docker network to host a local website.

## Usage

To launch the project, follow these steps:


1. **Clone this repository:**
	```bash
	git clone https://github.com/damiandania/Inception.git

2. **Navigate to the project directory:**
	```bash
	cd Inception

3. In the `srcs` folder, fill out the `ExampleEnvFile` and save it as `srcs/.env`.

4. Update the `login` variable in the Makefile to reflect your 42 school login.

Once these steps are complete, use `make` to build and launch the Docker containers.
The website should be accessible at `https://localhost` or `http://<your_login>.42.fr` (replace `<your_login>` with the Makefile variable).

## Project Notes

### Services

- **MariaDB**: Relational database configured with an initialization script to create the necessary database and users.
- **Nginx**: Web server configured to serve WordPress content and handle SSL connections.
- **WordPress**: Content management platform configured to connect to the MariaDB database and serve content through Nginx.

### Key Files

- [`srcs/docker-compose.yml`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2FUsers%2Fdamiandania%2FGitFolder%2FInception%2Fsrcs%2Fdocker-compose.yml%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%5D "/Users/damiandania/GitFolder/Inception/srcs/docker-compose.yml"): Docker Compose configuration file defining the services and their interactions.
- [`srcs/requirements/mariadb/Dockerfile`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2FUsers%2Fdamiandania%2FGitFolder%2FInception%2Fsrcs%2Frequirements%2Fmariadb%2FDockerfile%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%5D "/Users/damiandania/GitFolder/Inception/srcs/requirements/mariadb/Dockerfile"): Dockerfile to build the MariaDB image.
- [`srcs/requirements/nginx/Dockerfile`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2FUsers%2Fdamiandania%2FGitFolder%2FInception%2Fsrcs%2Frequirements%2Fnginx%2FDockerfile%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%5D "/Users/damiandania/GitFolder/Inception/srcs/requirements/nginx/Dockerfile"): Dockerfile to build the Nginx image.
- [`srcs/requirements/wordpress/Dockerfile`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2FUsers%2Fdamiandania%2FGitFolder%2FInception%2Fsrcs%2Frequirements%2Fwordpress%2FDockerfile%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%5D "/Users/damiandania/GitFolder/Inception/srcs/requirements/wordpress/Dockerfile"): Dockerfile to build the WordPress image.
- [`srcs/.env`](command:_github.copilot.openRelativePath?%5B%7B%22scheme%22%3A%22file%22%2C%22authority%22%3A%22%22%2C%22path%22%3A%22%2FUsers%2Fdamiandania%2FGitFolder%2FInception%2Fsrcs%2F.env%22%2C%22query%22%3A%22%22%2C%22fragment%22%3A%22%22%7D%5D "/Users/damiandania/GitFolder/Inception/srcs/.env"): Environment variables file containing sensitive configurations like passwords and usernames.

### Makefile Commands

- [`make all`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22%2FUsers%2Fdamiandania%2FGitFolder%2FInception%2FREADME.md%22%2C%22external%22%3A%22file%3A%2F%2F%2FUsers%2Fdamiandania%2FGitFolder%2FInception%2FREADME.md%22%2C%22path%22%3A%22%2FUsers%2Fdamiandania%2FGitFolder%2FInception%2FREADME.md%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A47%2C%22character%22%3A2487%7D%7D%5D%5D "Go to definition"): Builds and starts all services.
- [`make start`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22%2FUsers%2Fdamiandania%2FGitFolder%2FInception%2FREADME.md%22%2C%22external%22%3A%22file%3A%2F%2F%2FUsers%2Fdamiandania%2FGitFolder%2FInception%2FREADME.md%22%2C%22path%22%3A%22%2FUsers%2Fdamiandania%2FGitFolder%2FInception%2FREADME.md%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A48%2C%22character%22%3A9%7D%7D%5D%5D "Go to definition"): Starts the services.
- [`make stop`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22%2FUsers%2Fdamiandania%2FGitFolder%2FInception%2FREADME.md%22%2C%22external%22%3A%22file%3A%2F%2F%2FUsers%2Fdamiandania%2FGitFolder%2FInception%2FREADME.md%22%2C%22path%22%3A%22%2FUsers%2Fdamiandania%2FGitFolder%2FInception%2FREADME.md%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A49%2C%22character%22%3A9%7D%7D%5D%5D "Go to definition"): Stops the services.
- [`make down`](command:_github.copilot.openSymbolFromReferences?%5B%22%22%2C%5B%7B%22uri%22%3A%7B%22%24mid%22%3A1%2C%22fsPath%22%3A%22%2FUsers%2Fdamiandania%2FGitFolder%2FInception%2FREADME.md%22%2C%22external%22%3A%22file%3A%2F%2F%2FUsers%2Fdamiandania%2FGitFolder%2FInception%2FREADME.md%22%2C%22path%22%3A%22%2FUsers%2Fdamiandania%2FGitFolder%2FInception%2FREADME.md%22%2C%22scheme%22%3A%22file%22%7D%2C%22pos%22%3A%7B%22line%22%3A50%2C%22character%22%3A9%7D%7D%5D%5D "Go to definition"): Stops and removes the containers.
- `make logs`: Shows the logs of the services.
- `make clean`: Removes Docker data and images.
- `make fclean`: Performs a complete cleanup of the Docker system.
- `make re`: Rebuilds and restarts all services.
