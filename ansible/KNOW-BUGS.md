chmod: cannot access '/root/.ssh/authorized_keys': No such file or directory
chown: cannot access '/root/.ssh/authorized_keys': No such file or directory
# faltou gerar o ssh-keygen 

Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/json": dial unix /var/run/docker.sock: connect: permission denied

sudo docker ps 

exec /start.sh: no such file or directory
exec /start.sh: no such file or directory


mathe@DESKTOP-2G7LJIG MINGW64 ~/devops/devs2blu-devops-iac/ansible (main)
$ ssh-keygen -t rsa -b 4096 -f ./id_rsa
Generating public/private rsa key pair.
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in ./id_rsa
Your public key has been saved in ./id_rsa.pub
The key fingerprint is:
SHA256:TrmhujyeCWmuphPgxlbnicGe91YZECN1ouJMeuKyVXI mathe@DESKTOP-2G7LJIG
The key's randomart image is:
+---[RSA 4096]----+
+---[RSA 4096]----+
|     ..=..       |
|      o.+        |
|  .o .  .        |
|. =+..   o       |
|+o++E . S o      |
|o=oO + + =       |
|+o= . o +        |
|o* o.+ o         |
|*o..Bo.          |
+----[SHA256]-----+