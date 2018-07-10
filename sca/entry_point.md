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

```
MSP：Membership service provider 会员服务提供者 
BCCSP：blockchain（前两个字母BC） cryptographic service provider 区域链加密服务提供者 
ab：atomic broadcast原子（操作）广播 
lscc：lifecycle(L) system(S) chaincode（CC）生命周期系统链码 
Spec：Specification，规格标准，详细说明 
KV：key-value 键-值 
CDS：ChaincodeDeploymentSpec 
CIS：ChaincodeInvocationSpec 
mgmt：management 
SW：software-based 
AB：AtomicBroadcast 
GB：genesis block，创世纪的block，也就是区域链中的第一个块 
CC或cc：chaincode 
SCC或scc：system chaincode 
cscc：configer system chaincode 
lscc：lifecycle system chaincode 
escc：endorser system chaincode 
vscc：validator system chaincode 
qscc：querier system chaincode 
alg：algorithm 算法 
mcs：mspMessageCryptoService 
mock：假装，学样子，模仿的意思，基本上是服务于xxx_test.go的，即用于测试的 
Gossip：一种使分布结点达到状态最终一致的算法 
attr：attribute 
FsBlockStore：file system block store 
vdb：versioned database 也就是状态数据库 
RTEnv：runtime environment运行环境 
pkcs11：pcks#11，一种公匙加密标准，有一套叫做Cryptoki的接口，是一组平台设备无关的API 
MCS：mspMessageCryptoService，消息加密服务 
sa：SecurityAdvisor 
impl：implement，好多处XXX.go和XXXimpl.go是对应的，前者是用于接口或者定义的，后者是实现该接口或定义的 
FSM：finite state machine 有限状态机 
FS：filesystem 文件系统 
blk：block 
cli：command line interface 命令行界面 
CFG：FABRIC_CFG_PATH中的，应该是config的意思 
mgr：manager 
cpinfo：checkpoint information，检查点信息 
DevMode：development mode，开发模式 
Reg：register，注册，登记 
hdr：header 
impl：implement 
oid：ObjectIdentifier，对象标识符 
ou或OU：organizational unit 
CRL：certificate revocation list，废除证书列表 
prop：proposal，申请，交易所发送的申请 
ACL：Access Control List，访问控制列表 
rwset：read/write set，读写集 
tx，Tx：transaction，交易 
CSP：cryptographic service provider，BCCSP的后三个字母，加密服务提供者 
opt：option，选项 
opts：options，多个选项 
SKI：当前证书标识，所谓标识，一般是对公匙进行一下hash 
AKI：签署方的SKI，也就是签署方的公匙标识 
HSM：Hardware Security Modules 
ks：KeyStore，Key存储，这个key指的是用于签名的公匙私匙 
oid：OBJECT IDENTIFIER，对象身份标识
```

```
bcssp 加密服务代码目录
common 全局公用代码目录
core 核心功能代码目录
docs 以.rst文件为核心，可编译生成文档。说明文档的目录
events 事件代码目录，用于生产和消费信息
examples 示例目录
gossip 本意是绯闻的意思，是一种可达到去中心化，有一定容错能力且可达到最终一致的传播算法
msp 会员服务代码目录
orderer 就理解成orderer目录就好，orderer也算是区域链中的专用名词，用于消息的订阅与分发处理
protos 原型目录，定义个各种原型和生成的对应的XXX.pb.go源码
vendor 原意是商贩，在此就是存放go中使用的全部的各种第三方包
```
