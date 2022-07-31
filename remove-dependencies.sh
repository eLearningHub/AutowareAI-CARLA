#! /bin/bash
for container in $(cat docker_containers)
do
	docker kill $container
	docker rm $container
done

for image in $(cat docker_images)
do
	docker rmi $image
done

sudo pkill docker

for file in $(cat bin_files)
do
	sudo rm /usr/local/bin/$file
done

sudo rm -rf nvidia-docker
