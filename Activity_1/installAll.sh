apt-get -y update
apt-get -y install docker.io
apt-get -y install zip
systemctl start docker
systemctl enable docker
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/hdp.zip
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/checkHortonworks.sh
chmod +x checkHortonworks.sh
unzip hdp.zip
bash docker-deploy-hdp265.sh
docker update --restart always sandbox-hdp
docker update --restart always sandbox-proxy
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/done.service
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/end.sh
mv done.service /etc/systemd/system/
chmod +x end.sh
systemctl start done.service
systemctl enable done.service
rm installAll.sh
./checkHortonworks.sh
