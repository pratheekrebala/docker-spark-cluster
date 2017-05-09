sudo echo '{"insecure-registries":["10.176.225.202:5000"]}' >> daemon.json
sudo mv daemon.json /etc/docker/
sudo systemctl daemon-reload
sudo systemctl restart docker