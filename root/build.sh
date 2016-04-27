apt-get update

#install
apt-get install -y wget curl libfreetype6

#install supervisor
apt-get install -y supervisor

#delete package cache
rm -rf /var/lib/apt/lists/*

chmod 777 /config/bootstrap.sh