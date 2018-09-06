# docker mode

```
./start.sh
```

```
docker exec -it cli bash
peer chaincode install -n mycc -v 1.0 -p chaincodedev/chaincode
peer chaincode instantiate -n mycc -v 1.0 -c '{"Args":["init","{\"receiptId\":\"r00234387ed1849e4\",\"message\":\"name|sinodata\",\"image\":\"ox921389213\",\"waterImage\":\"0x677137289137\",\"owner\":{\"ownerId\":\"u000\",\"ownerName\":\"user0\",\"ownerPw\":\"1\"},\"shshareList\":[]}"]}'  -C mychannel 
peer chaincode query -n mycc -v 1.0 -c '{"Args":["readByReciptId","r00234387ed1849e4"]}'  -C mychannel 
```



```
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi -f $(docker images | grep "dev\|none\|test-vp\|peer[0-9]-" | awk '{print $3}')

docker ps -a
docker images
```
