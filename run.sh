docker stop test1 && docker rm test1
docker run -d \
	--cpuset-cpus 0-29 \
	--name test1 \
	-v /home/jenkins:/root \
	-v /home/jenkins:/home/jenkins \
	-v /opt/android-sdk-linux:/opt/android-sdk-linux
       	-p 23:22 \
	zapbranigan/builder-ubuntu-android-sdk:latest
