# docker-dev mode
```
docker-compose -f docker-compose-simple.yaml up
```
```
docker exec -it chaincode bash
go build -o receipt
CORE_CHAINCODE_LOGLEVEL=debug CORE_PEER_ADDRESS=peer:7052 CORE_CHAINCODE_ID_NAME=mycc:1.0 ./receipt
```

```
docker exec -it cli bash
peer chaincode install -n mycc -v 1.0 -p chaincodedev/chaincode
peer chaincode instantiate -n mycc -v 1.0 -c '{"Args":["init","{\"receiptId\":\"r00234387ed1849e4\",\"message\":\"name|sinodata\",\"image\":\"ox921389213\",\"waterImage\":\"0x677137289137\",\"owner\":{\"ownerId\":\"u000\",\"ownerName\":\"user0\",\"ownerPw\":\"1\"},\"shshareList\":[]}"]}'  -C myc
peer chaincode query -n mycc -v 1.0 -c '{"Args":["readByReciptId","r00234387ed1849e4"]}'  -C myc
```

```
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi -f $(docker images | grep "dev\|none\|test-vp\|peer[0-9]-" | awk '{print $3}')

docker ps -a
docker images
```
