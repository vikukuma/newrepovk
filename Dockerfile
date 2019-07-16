FROM ubuntu:16.04
LABEL MAINTAINER all-images@devops.com
arg image_variable="local"
env ora_port=1521
env ora_host="localhost"
#Comment
run mkdir /code
copy Sample.sh /code/Sample.sh
run chmod +x /code/Sample.sh
run echo "Building an Image.."

workdir /code
cmd sh /code/Sample.sh
