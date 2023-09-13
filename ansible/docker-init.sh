
# Run this dockerfile:

# ssh-keygen -t rsa -b 4096 -f ./id_rsa
# ou .. 

#1) gerar ssh-keygen
yes | ssh-keygen -t rsa -b 4096 -q -f ./id_rsa -N ""

# 2)
docker build -t ansible_image .

# 3)
docker run -d -p 2222:22 -v $(pwd)/id_rsa.pub:/root/.ssh/authorized_keys ansible_image
docker run -it -p 2222:22 -v $(pwd)/id_rsa.pub:/root/.ssh/authorized_keys ansible_image

# 4) 
ssh "-o StrictHostKeyChecking=no" -i ./id_rsa root@localhost -p 2222

## File Start.sh no raiz do docer:

#!/bin/bash
# chmod 600 /root/.ssh/authorized_keys
# chown root.root /root/.ssh/authorized_keys
# /usr/sbin/sshd -D
