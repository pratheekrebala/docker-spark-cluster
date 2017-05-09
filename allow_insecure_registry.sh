sudo echo '{"insecure-registries":["10.176.225.188:5000"]}' >> /etc/docker/daemon.json
sudo systemctl daemon-reload
sudo systemctl restart docker