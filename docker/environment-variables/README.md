Don't confuse the .env file and the env_file option!

They serve totally different purposes!

The .env file feeds those environment variables only to your Docker Compose file, which in turn, can be passed to the containers as well.

But the env_file option only passes those variables to the containers and not the Docker Compose file.

https://stackoverflow.com/questions/29377853/how-can-i-use-environment-variables-in-docker-compose