# kvledger

## leveldb
leveldb的基本操作:

1. 打开数据库，db, err:=leveldb.OpenFile("./db", nil)。作用就是在当前目录下创建一个db文件夹作为数据库的目录。
2. 存储键值，db.Put([]byte("key1"),[]byte("value1"),nil)。作用就是在数据库在数据库中存储 键值对 key1-value1。leveldb数据库中对键值的操作都是byte格式化的数据。
3. 获取键值对，data,_ := db.Get([]byte("key1"),nil)。获取key1对应的值。
4. 遍历数据库，iter := db.NewIterator(nil, nil)，for iter.Next(){ fmt.Printf("key=%s,value=%s\n",iter.Key(),iter.Value()) }，iter.Release()。作用就是建立迭代器iter，然后依次遍历数据库中所有的数据并打印键和值，最后释放迭代器iter。
5. 关闭数据库，db.Close()。
