# Developer Environment

## Prerequistes:
* Docker [Macs](https://docs.docker.com/docker-for-mac/install/) [Linux](https://docs.docker.com/engine/install/#server)
* Docker Compose [Mac/Linux](https://docs.docker.com/compose/install/)
* Repo requires a `git clone --recursive` (git 1+) or `git clone --recurse-submodules` (git 2+) depending on your version of of git 

## Initialize
* `bash set-up.sh`

## Destroy
* `bash destroy.sh`
  * This script will prompt you to:
    * Stop all containers
    * Destroy all containers
    * Destroy all Volumes

# Working in Containers
* Login to a container
  * `sudo docker exec -it [<container_hostname>] bash`
* Get logs from a container
  * `sudo docker-compose logs -f [<container_name>]`
* Show running status and ports of a container
  * `sudo docker-compose ps`
* Build and Start all containers
  * `sudo docker-compose up -d --build`
* Stop all containers
  * `sudo docker-compose kill`
* Delete inactive containers
  * `sudo docker system prune -a -f`
* Remove Volumes
  * `sudo docker volume prune -f`
