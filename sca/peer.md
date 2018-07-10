# peer

## tree
```
tree
.
├── chaincode
│   ├── chaincode.go
│   ├── common.go
│   ├── common_test.go
│   ├── flags_test.go
│   ├── install.go
│   ├── install_test.go
│   ├── instantiate.go
│   ├── instantiate_test.go
│   ├── invoke.go
│   ├── invoke_test.go
│   ├── java.go
│   ├── list.go
│   ├── list_test.go
│   ├── nojava.go
│   ├── package.go
│   ├── package_test.go
│   ├── query.go
│   ├── query_test.go
│   ├── signpackage.go
│   ├── signpackage_test.go
│   ├── upgrade.go
│   └── upgrade_test.go
├── channel
│   ├── channel.go
│   ├── create.go
│   ├── create_test.go
│   ├── deliverclient.go
│   ├── fetchconfig.go
│   ├── fetchconfig_test.go
│   ├── flags_test.go
│   ├── getinfo.go
│   ├── getinfo_test.go
│   ├── join.go
│   ├── join_test.go
│   ├── list.go
│   ├── list_test.go
│   ├── signconfigtx.go
│   ├── signconfigtx_test.go
│   ├── update.go
│   └── update_test.go
├── clilogging
│   ├── common.go
│   ├── getlevel.go
│   ├── logging.go
│   ├── logging_test.go
│   ├── revertlevels.go
│   └── setlevel.go
├── common
│   ├── broadcastclient.go
│   ├── common.go
│   ├── common_test.go
│   ├── mockclient.go
│   ├── ordererclient.go
│   ├── ordererclient_test.go
│   ├── ordererenv.go
│   ├── ordererenv_test.go
│   ├── peerclient.go
│   ├── peerclient_test.go
│   └── testdata
│       ├── absolute.yaml
│       ├── certs
│       │   ├── bad.key
│       │   ├── ca.crt
│       │   ├── client.crt
│       │   └── client.key
│       ├── notset.yaml
│       ├── relative.yaml
│       └── test.yaml
├── gossip
│   ├── mcs.go
│   ├── mcs_test.go
│   ├── mocks
│   │   └── mocks.go
│   ├── sa.go
│   └── sa_test.go
├── main.go
├── node
│   ├── node.go
│   ├── start.go
│   ├── start_test.go
│   ├── status.go
│   └── status_test.go
└── version
    ├── version.go
    └── version_test.go
```

## cobra
> A Commander for modern Go CLI interactions

```
type Command struct {  
    Use string   //命令名称字段，如你在命令行敲的是peer ...，则该字段值就是"peer"
    Short string //短说明字段
    Long string  //详细说明字段
    Run func(cmd *Command, args []string) //该命令所执行的函数
    ...
}
RootCmd := &cobra.Command{...}
```

