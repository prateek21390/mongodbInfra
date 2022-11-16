#!/bin/bash

yum update -y
cat << EOF > /etc/yum.repos.d/mongodb-org-5.0.repo
[mongodb-org-5.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/amazon/2/mongodb-org/5.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-5.0.asc
EOF

yum install -y mongodb-org -y
systemctl start mongod
systemctl enable mongod

# cat mongoconf.txt > /etc/mongod.conf
# private_ip=$(curl http://169.254.169.254/latest/meta-data/local-ipv4)
# echo $private_ip
sudo sed -i 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf
sudo echo -e  'replication:\n   replSetName: "rs1"' >> /etc/mongod.conf
sudo service mongod restart
# mongo <<EOF
# rs.initiate()
# rs.add("$ip1")
# rs.add("$ip2")
# EOF


# mongosh

# mkdir -p mongos/db1
# mongod --port 2717 --dbpath ~/mongos/db1 --replSet myReplicaSet
# mongo --port 2717
# rs.initiate
# rs.add

# mkdir cfg0 cfg1 cfg2

# mkdir a0 a1 a2 b0 b1 b2 c0 c1 c2 d0 d1 d2

# mongod -- configsvr --dbpath --cfg0 --port 26050 --fork --logpath log.cfg0 --replSet cfg
# mongo --port 26050
# rs.initiate


