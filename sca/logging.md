# logging

## go-logging

这里所说的日志，是指程序运行过程中打印到终端或日志文件，记录程序运行过程的日志，而非涉及到fabric记录交易数据，账本数据一类的交易日志。其实日志系统机制对于源码研究可以忽略，且相对简单，但是一方面日志系统对于程序运行和调试必不可少，fabric如何形成这个日志系统可以学习学习，日志所打印的内容对阅读源码也是一种提示；另一方面不弄清楚这个日志，在阅读源码的过程中这些到处出现的打印日志总像围绕在源码上面的蚊子一样，闹心。

fabric的日志系统主要使用了第三方包go-logging，可在`github.com/op/go-logging`下载.很少一部分使用了go语言标准库中的log。在此基础上fabric自己封装出来了flogging，这个f，应该代表fabric吧，意思是说这是fabric的logging。代码集中在fabric/common/flogging目录下，供项目全局使用。

```
//创建一个名字为examplename的日志对象log
var log = logging.MustGetLogger("examplename")
//创建一个日志输出格式对象format，也就是用什么格式输出
var format = logging.MustStringFormatter(
    `%{color}%{time:15:04:05.000} %{shortfunc} ▶ %{level:.4s} %{id:03x}%{color:reset} %{message}`,
)
//创建一个日志输出对象backend，也就是日志要打印到哪儿，在此是标准错误输出
backend := logging.NewLogBackend(os.Stderr, "", 0)
//将输出格式与输出对象绑定
backendFormatter := logging.NewBackendFormatter(backend, format)
//将绑定了格式的输出对象设置为日志的输出对象
//这样log打印每一句话都会按格式输出到backendFormatter所代表的对象里，在此即是标准错误输出
logging.SetBackend(backendFormatter)
//log打印依据Info信息
log.Info("info")
//log打印一句Error信息
log.Error("err")
```

## flogging

在flogging目录下有两个文件，grpclogger.go和logging.go。

grpclogger.go用于设置grpc的日志，因为grpc默认只是用go语言的标准日志接口，因此将logging封装成go语言的标准日志形式的结构type grpclogger struct {logger *logging.Logger}，然后通过initgrpclogger()生成对象供grpc使用，从而实现让grpc也使用flogging的效果。

logging.go文件中，自带一个名为flogging的日志记录者logger，同时规定了默认的日志格式，日志等级，用defaultFormat，defaultLevel常量表示。默认的输出端defaultOutput，并有用于存放所有fabric模块日志的级别映射modules map[string]string，从类型上看其存储的日志级别都字符串化了。最后还有一个存放每个peer启动之时的日志级别的映射peerStartModules map[string]string，由在每个peer启动完成之时调用SetPeerStartupModulesMap()初始化，并可通过调用RevertToPeerStartupLevels()恢复初始值。
