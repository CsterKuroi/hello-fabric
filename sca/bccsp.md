# bccsp

## interface
```
//在fabric/bccsp/bccsp.go中定义
type BCCSP interface {
    //根据key生成选项opts生成一个key
    //与key有关的选项opts选项要适合原始的key（与“证书是一级一级的认证”对看）
    KeyGen(opts KeyGenOpts) (k Key, err error)
    //根据key获取选项opts从k中重新获取一个key
    KeyDeriv(k Key, opts KeyDerivOpts) (dk Key, err error)
    //根据key导入选项opts从一个key原始的数据中导入一个key
    KeyImport(raw interface{}, opts KeyImportOpts) (k Key, err error)
    //根据SKI返回与该接口实例有联系的key
    GetKey(ski []byte) (k Key, err error)
    //根据哈希选项opts哈希一个消息msg，如果opts为空，则使用默认选项
    Hash(msg []byte, opts HashOpts) (hash []byte, err error)
    //根据哈希选项opts获取hash.Hash实例，如果opts为空，则使用默认选项
    GetHash(opts HashOpts) (h hash.Hash, err error)
    //根据签名者选项opts，使用k对digest进行签名，注意如果需要对一个特别大的消息的hash值
    //进行签名，调用者则负责对该特别大的消息进行hash后将其作为digest传入
    Sign(k Key, digest []byte, opts SignerOpts) (signature []byte, err error)
    //根据鉴定者选项opts，通过对比k和digest，鉴定签名
    Verify(k Key, signature, digest []byte, opts SignerOpts) (valid bool, err error)
    //根据加密者选项opts，使用k加密plaintext
    Encrypt(k Key, plaintext []byte, opts EncrypterOpts) (ciphertext []byte, err error)
    //根据解密者选项opts，使用k对ciphertext进行解密
    Decrypt(k Key, ciphertext []byte, opts DecrypterOpts) (plaintext []byte, err error)
}
```
