# dev-mode

1. Get flags
```
cd $GOPATH/src/github.com/hyperledger/fabric
make test-cmd
```

get somes like

> -ldflags "-X github.com/hyperledger/fabric/common/metadata.Version=1.1.1-snapshot-ff5e861 -X github.com/hyperledger/fabric/common/metadata.BaseVersion=0.4.6 -X github.com/hyperledger/fabric/common/metadata.BaseDockerLabel=org.hyperledger.fabric -X github.com/hyperledger/fabric/common/metadata.DockerNamespace=hyperledger -X github.com/hyperledger/fabric/common/metadata.BaseDockerNamespace=hyperledger -X github.com/hyperledger/fabric/common/metadata.Experimental=true"


2. build
```
mkdir bin
cd bin
go build -gcflags "-N -l" -ldflags "-X github.com/hyperledger/fabric/common/metadata.Version=1.1.1-snapshot-ff5e861 -X github.com/hyperledger/fabric/common/metadata.BaseVersion=0.4.6 -X github.com/hyperledger/fabric/common/metadata.BaseDockerLabel=org.hyperledger.fabric -X github.com/hyperledger/fabric/common/metadata.DockerNamespace=hyperledger -X github.com/hyperledger/fabric/common/metadata.BaseDockerNamespace=hyperledger -X github.com/hyperledger/fabric/common/metadata.Experimental=true" github.com/hyperledger/fabric/orderer
go build -gcflags "-N -l" -ldflags "-X github.com/hyperledger/fabric/common/metadata.Version=1.1.1-snapshot-ff5e861 -X github.com/hyperledger/fabric/common/metadata.BaseVersion=0.4.6 -X github.com/hyperledger/fabric/common/metadata.BaseDockerLabel=org.hyperledger.fabric -X github.com/hyperledger/fabric/common/metadata.DockerNamespace=hyperledger -X github.com/hyperledger/fabric/common/metadata.BaseDockerNamespace=hyperledger -X github.com/hyperledger/fabric/common/metadata.Experimental=true" github.com/hyperledger/fabric/peer
go build -gcflags "-N -l" -ldflags "-X github.com/hyperledger/fabric/common/metadata.Version=1.1.1-snapshot-ff5e861 -X github.com/hyperledger/fabric/common/metadata.BaseVersion=0.4.6 -X github.com/hyperledger/fabric/common/metadata.BaseDockerLabel=org.hyperledger.fabric -X github.com/hyperledger/fabric/common/metadata.DockerNamespace=hyperledger -X github.com/hyperledger/fabric/common/metadata.BaseDockerNamespace=hyperledger -X github.com/hyperledger/fabric/common/metadata.Experimental=true" github.com/hyperledger/fabric/common/tools/cryptogen
go build -gcflags "-N -l" -ldflags "-X github.com/hyperledger/fabric/common/metadata.Version=1.1.1-snapshot-ff5e861 -X github.com/hyperledger/fabric/common/metadata.BaseVersion=0.4.6 -X github.com/hyperledger/fabric/common/metadata.BaseDockerLabel=org.hyperledger.fabric -X github.com/hyperledger/fabric/common/metadata.DockerNamespace=hyperledger -X github.com/hyperledger/fabric/common/metadata.BaseDockerNamespace=hyperledger -X github.com/hyperledger/fabric/common/metadata.Experimental=true" github.com/hyperledger/fabric/common/tools/configtxgen
```

3. env
```
sudo vim /etc/profile
    export PATH=$GOPATH/src/github.com/hyperledger/fabric/bin:$PATH
source /etc/profile 
```

4. Start the orderer
```
orderer
```

5. Start the peer 
```
CORE_PEER_CHAINCODELISTENADDRESS=0.0.0.0:7052 peer node start --peer-chaincodedev=true
```

6. Create channel and join
```
configtxgen -channelID originchan -outputCreateChannelTx originchan.tx -profile SampleSingleMSPChannel
peer channel create -o 127.0.0.1:7050 -c originchan -f originchan.tx
peer channel join -b originchan.block
```

7. Start the chaincode
```
cd examples/chaincode/go/chaincode_example02
go build -o example02
CORE_CHAINCODE_LOGLEVEL=debug CORE_PEER_ADDRESS=127.0.0.1:7052 CORE_CHAINCODE_ID_NAME=mycc:0 ./example02
```

8. Use the chaincode
```
peer chaincode instantiate -n mycc -v 0 -c '{"Args":["init","a","100","b","200"]}' -o 127.0.0.1:7050 -C originchan
peer chaincode invoke -n mycc -c '{"Args":["invoke","a","b","10"]}' -o 127.0.0.1:7050 -C originchan
peer chaincode query -n mycc -c '{"Args":["query","a"]}' -o 127.0.0.1:7050 -C originchan
```

