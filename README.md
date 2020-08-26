# Developer Environment

## Prerequistes:
* Docker [Macs](https://docs.docker.com/docker-for-mac/install/) [Linux](https://docs.docker.com/engine/install/#server)
* Docker Compose [Mac/Linux](https://docs.docker.com/compose/install/)
* Repo requires a `git clone --recursive` (git 1+) or `git clone --recurse-submodules` (git 2+) depending on your version of of git 

## Initialize
* sudo docker-compose up -d --build

## Destroy Env
* `bash destroy.sh`
  * This script will prompt you to:
    * Stop all containers
    * Destroy all containers
    * Destroy the Database
    * Destroy all Volumes

# Working in Containers
* Login
  * `sudo docker exec -it [<container_hostname>] bash`
* Get logs
  * `sudo docker-compose logs -f [<container_name>]`
* Show
  * `sudo docker-compose ps`
* Build and Start
  * `sudo docker-compose build -d`
* Stop all containers
  * `sudo docker-compose kill`
* Delete inactive containers
  * `sudo docker system prune -a -f`
* Remove Volumes
  * `sudo docker volume prune -f`
