# docker multi
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
`
docker ps -a
docker images
```