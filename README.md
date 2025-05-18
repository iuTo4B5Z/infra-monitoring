# infra-monitoring

## What is this?
This is the Docker and Docker Compose configuration for our monitoring system, using Grafana, Prometheus, Telegraf, InfluxDB and VMware Exporter.

## Installation
- Ensure your device's OS is up to date.  
- Install Docker and Docker Compose  
    - Add the official Docker package repository:  
    `sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo`  
    - Install Docker and Docker Compose:  
    `sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin`  
    - Start the Docker daemon:  
    `sudo systemctl start docker`  
- Clone the repository:  
`curl -L -O https://github.com/iuTo4B5Z/infra-monitoring/archive/refs/heads/main.tar.gz`  
- Unpack the tarball:  
`tar -xzvf main.tar.gz`  
- Change your working directory to the extracted directory:  
`cd infra-monitoring-main`  
- Give the setup script permission to be executed:  
`chmod +x ./infra-monitoring-main/setup.sh`  
- Run the setup script:  
`./infra-monitoring-main/setup.sh`  
- Change the permissions on the `data/grafana` directory:
`sudo chown 104:104 ../data/grafana`