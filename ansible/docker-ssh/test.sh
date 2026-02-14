# https://circleci.com/blog/ssh-into-docker-container/
docker build --tag ssh .
docker run --name ssh --detach -p-publish 2222:22 ssh

docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ssh
ssh jane@$IP -p 2222