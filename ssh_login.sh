# local
ssh-keygen
ssh-copy-id root@<IP-Address>
scp ~/.ssh/id_rsa.pub root@<IP-Address>:~
ssh root@<IP-Address>
exec ssh-agent zsh
ssh-add

# server
mkdir .ssh
cat ~/id_rsa.pub >> ~/.ssh/authorized_keys
rm ~/id_rsa.pub
chmod 755 ~
chmod 755 ~/.ssh
chmod 644 ~/.ssh/authorized_keys