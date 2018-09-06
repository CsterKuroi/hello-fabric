docker-compose -f zookeeper.yaml up -d
docker-compose -f kafka.yaml up -d
docker-compose -f orderer.yaml up -d
docker-compose -f peer.yaml up -d
