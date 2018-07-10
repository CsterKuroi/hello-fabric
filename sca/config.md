# config

## viper

## peer

peer命令对core.yaml的引入也是通过viper，具体过程如下：

* /fabric/peer/main.go中定义const cmdRoot = "core"。
* main函数中调用err := common.InitConfig(cmdRoot)，该参数一路向下传递。
* InitConfig函数在/fabric/peer/common/common.go中定义，其中调用了config.InitViper(nil, cmdRoot)和viper.ReadInConfig()。
* InitViper在/fabric/core/config/config.go中定义，接收cmdRoot作为参数，最终调用了viper.SetConfigName()，也即将core设置为了配置文件名。
* common.InitConfig(cmdRoot)中的viper.ReadInConfig()则读取了该配置文件


搜索路径（二选一）

FABRIC_CFG_PATH指定的路径
* ./，$GOPATH/src/github.com/hyperledger/fabric/sampleconfig，/etc/hyperledger/fabric
* 搜索的配置文件名

* core —— 核心配置，供各个模块使用
* orderer —— orderer配置，orderer使用
