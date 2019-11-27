# node config
# 日志配置
log:
# 模块名称
  module: xchain
# 日志目录
  filepath: logs
# 日志文件名
  filename: xchain
  fmt: logfmt
# 是否打印命令行工具端口
  console: true
# 日志等级
  level : debug

# RPC 服务暴露的端口
tcpServer:
  port: :37101
  # prometheus监控指标端口, 为空的话就不启动
  metricPort: :37201
  tls: false

# 区块链节点配置
p2pV2:
  port: 47101
  bootNodes:
  #staticNodes:
  #  xuper:
  #    - "/ip4/<ip>/tcp/<port>/p2p/<node_hash>"
    
miner:
# 密钥存储路径
  keypath: ./data/keys

# 数据存储路径
datapath: ./data/blockchain

utxo:
# utxo的内存LRUCache大小，默认100000个address, 这个需要根据一个block里address的容量来考虑
  cachesize: 100000
# GenerateTx的临时锁定期限，默认是600秒
  tmplockSeconds: 600
#单个块的合约执行的总时间(单位ms)
  contractExecutionTime: 500

kernel:
# minNewChainAmount 设置创建平行链时最少要转多少钱到同链名address
  minNewChainAmount: "100"
  newChainWhiteList:
      - dpzuVdosQrF2kmzumhVeFQZa1aYcdgFpN: true

# 管理native合约的配置
native:
  enable: false
  # 与部署相关的配置
  deploy:
    # 部署白名单，列表为钱包地址
    whiteList:
      enable: false
      addresses:
        - dpzuVdosQrF2kmzumhVeFQZa1aYcdgFpN 

  # docker相关配置
  docker:
    enable: false
    # 合约运行的镜像名字
    imageName: "docker.io/centos:7.5.1804"
    # cpu核数限制，可以为小数
    cpus: 1
    # 内存大小限制
    memory: "1G"

  # 停止合约的等待秒数，超时强制杀死
  stopTimeout: 3

# 插件配置文件路径
pluginConfPath: "./conf/plugins.conf"

# 是否启用p2p核心节点直连
coreConnection : false

txidCacheExpiredTime : "10s"

# 是否压缩交易/区块
enableCompress : true

# 剪枝配置
prune:
  switch: false
  bcname: "xuper"
  targetBlockid: "xxx"
