### Nerves
```sh
echo "MIX_TARGET=" > ./env_files/nerves.env
docker run --rm -v ${PWD}/ssh_keys:/root/.ssh alpine:latest /bin/sh -c "apk add --update openssh-client && ssh-keygen -t rsa -f /root/.ssh/id_rsa -N \"\""
```
