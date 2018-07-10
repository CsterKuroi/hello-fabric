# Entry Point

## func main

```
grep "func main" * -r -n --include=*.go > func_main.txt
```

```
common/tools/idemixgen/idemixgen.go:46:func main() {
common/tools/configtxlator/main.go:67:func main() {
common/tools/configtxgen/main.go:208:func main() {
common/tools/cryptogen/main.go:215:func main() {
core/chaincode/platforms/util/utils_test.go:307:	func main() {
core/handlers/decoration/plugin/decorator.go:27:func main() {
core/handlers/auth/plugin/filter.go:34:func main() {
core/ledger/kvledger/example/main/example.go:69:func main() {
core/ledger/kvledger/marble_example/main/marble_example.go:70:func main() {
core/comm/testdata/certs/generate.go:244:func main() {
examples/plugins/scc/plugin.go:31:func main() {}
examples/e2e_cli/examples/chaincode/go/chaincode_example02/chaincode_example02.go:188:func main() {
examples/chaincode/chaintool/example02/src/chaincode/chaincode_example02.go:118:func main() {
examples/chaincode/go/chaincode_example02/chaincode_example02.go:188:func main() {
examples/chaincode/go/eventsender/eventsender.go:87:func main() {
examples/chaincode/go/chaincode_example03/chaincode_example03.go:95:func main() {
examples/chaincode/go/enccc_example/enccc_example.go:216:func main() {
examples/chaincode/go/map/map.go:195:func main() {
examples/chaincode/go/map/map_experimental.go:306:func main() {
examples/chaincode/go/utxo/chaincode.go:99:func main() {
examples/chaincode/go/passthru/passthru.go:67:func main() {
examples/chaincode/go/sleeper/sleeper.go:119:func main() {
examples/chaincode/go/invokereturnsvalue/invokereturnsvalue.go:128:func main() {
examples/chaincode/go/marbles02/marbles_chaincode.go:127:func main() {
examples/chaincode/go/chaincode_example04/chaincode_example04.go:169:func main() {
examples/chaincode/go/chaincode_example01/chaincode_example01.go:99:func main() {
examples/chaincode/go/chaincode_example05/chaincode_example05.go:210:func main() {
examples/events/eventsclient/eventsclient.go:151:func main() {
examples/events/block-listener/block-listener.go:139:func main() {
examples/ccchecker/main.go:45:func main() {
examples/ccchecker/chaincodes/newkeyperinvoke/newkeyperinvoke.go:64:func main() {
orderer/main.go:14:func main() {
orderer/sample_clients/deliver_stdout/client.go:97:func main() {
orderer/sample_clients/broadcast_msg/client.go:59:func main() {
orderer/sample_clients/broadcast_config/client.go:88:func main() {
peer/main.go:66:func main() {
test/chaincodes/AuctionApp/art.go:236:func main() {
test/chaincodes/BadMetadataInvalidIndex/main.go:20:func main() {
test/chaincodes/BadMetadataIgnoreHiddenFile/main.go:20:func main() {
test/chaincodes/BadImport/main.go:20:func main() {
test/chaincodes/AutoVendor/chaincode/main.go:36:func main() {
test/chaincodes/BadMetadataUnexpectedFolderContent/main.go:20:func main() {
test/tools/PTE/chaincode_sample.go:175:func main() {
vendor/gopkg.in/alecthomas/kingpin.v2/doc.go:54://     func main() {
vendor/golang.org/x/net/ipv6/gen.go:29:func main() {
vendor/golang.org/x/net/webdav/litmus_test_server.go:32:func main() {
vendor/golang.org/x/net/ipv4/gen.go:29:func main() {
vendor/golang.org/x/net/publicsuffix/gen.go:119:func main() {
vendor/golang.org/x/net/publicsuffix/gen.go:126:func main1() error {
vendor/golang.org/x/net/internal/iana/gen.go:44:func main() {
vendor/golang.org/x/net/html/atom/gen.go:45:func main() {
vendor/golang.org/x/tools/cmd/cover/cover.go:69:func main() {
vendor/golang.org/x/sys/unix/mkpost.go:23:func main() {
vendor/github.com/docker/docker/pkg/namesgenerator/cmd/names-generator/main.go:9:func main() {
vendor/github.com/docker/docker/pkg/plugins/pluginrpc-gen/main.go:60:func main() {
vendor/github.com/docker/docker/pkg/mflag/example/example.go:26:func main() {
vendor/github.com/docker/docker/pkg/archive/example_changes.go:27:func main() {
vendor/github.com/gorilla/mux/doc.go:28:	func main() {
vendor/github.com/gorilla/mux/doc.go:152:	func main() {
vendor/github.com/gorilla/mux/mux.go:28://     func main() {
vendor/github.com/prometheus/procfs/doc.go:28://    func main() {
vendor/github.com/prometheus/client_golang/prometheus/doc.go:55://    func main() {
vendor/github.com/golang/protobuf/proto/lib.go:234:	func main() {
vendor/github.com/golang/protobuf/protoc-gen-go/main.go:59:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/BIG32.go:915:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/NHS.go:488:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/GCM.go:286:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/amcl/NHS.go:488:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/amcl/GCM.go:286:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/amcl/HASH384.go:193:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/amcl/RAND.go:140:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/amcl/HASH256.go:180:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/amcl/SHA3.go:228:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/amcl/FP256BN/BIG.go:916:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/amcl/FP256BN/ECP.go:933:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/amcl/FP256BN/PAIR.go:631:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/amcl/HASH512.go:193:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/amcl/AES.go:602:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/BIG64.go:916:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/HASH384.go:193:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/RAND.go:140:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/FF64.go:909:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/TestALL.go:430:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/BenchtestALL.go:35:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/ECP.go:933:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/HASH256.go:180:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/SHA3.go:228:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/TestNHS.go:29:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/PAIR.go:631:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/FF32.go:909:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/HASH512.go:193:func main() {
vendor/github.com/milagro-crypto/amcl/version3/go/AES.go:602:func main() {
vendor/github.com/Sirupsen/logrus/doc.go:13:  func main() {
vendor/github.com/DATA-DOG/godog/cmd/godog/main.go:58:func main() {
vendor/github.com/Shopify/sarama/examples/http_server/http_server.go:29:func main() {
vendor/github.com/Shopify/sarama/tools/kafka-console-partitionconsumer/kafka-console-partitionconsumer.go:25:func main() {
vendor/github.com/Shopify/sarama/tools/kafka-console-producer/kafka-console-producer.go:29:func main() {
vendor/github.com/Shopify/sarama/tools/kafka-console-consumer/kafka-console-consumer.go:27:func main() {
```

```
common/tools/idemixgen/idemixgen.go:46:func main() {
common/tools/configtxlator/main.go:67:func main() {
common/tools/configtxgen/main.go:208:func main() {
common/tools/cryptogen/main.go:215:func main() {

orderer/main.go:14:func main() {

peer/main.go:66:func main() {
```
