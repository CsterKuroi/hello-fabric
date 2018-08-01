# hello-fabric

## Quick Start of e2e-cli on centos7 (single machine)

1. docker
```
curl -sSL https://get.daocloud.io/docker | sh
docker -v

systemctl enable docker
```

2. docker-compose
```
sudo yum -y install epel-release
sudo yum -y install python-pip
sudo yum clean all
curl -L https://get.daocloud.io/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose -v
```

3. git
```
sudo yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel gcc perl-ExtUtils-MakeMaker htop tree
wget https://github.com/git/git/archive/v2.3.0.zip
unzip v2.3.0.zip
cd git-2.3.0
make prefix=/usr/local/git all
sudo make prefix=/usr/local/git install
git version
```

4. golang
```
wget https://storage.googleapis.com/golang/go1.10.1.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.10.1.linux-amd64.tar.gz
sudo vim /etc/profile
  export PATH=$PATH:/usr/local/go/bin
  export GOPATH=/opt/gopath
source /etc/profile
go version
```

5. fabric sourse code
```
git clone https://github.com/hyperledger/fabric.git
cd fabric
```

6. fabric binary & images
```
cd fabric/scripts
bootstrap.sh -s
(very slow as Great Firewall,try another way to download)
```

6. run e2e_cli
```
cd fabric/examples/e2e_cli
network_setup.sh up
(release binary to the right dir)
```


## Quick Start of e2e-cli on centos7 (multi machine)

```
docker-compose -f docker-compose-orderer.yaml up
docker-compose -f docker-compose-peer1.yaml up
docker-compose -f docker-compose-peer2.yaml up
docker-compose -f docker-compose-peer3.yaml up
docker-compose -f docker-compose-peer4.yaml up
```

```
docker exec -it cli bash
./scripts/script.sh mychannel
```

```
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi -f $(docker images | grep "dev\|none\|test-vp\|peer[0-9]-" | awk '{print $3}')

docker ps -a
docker images
```
