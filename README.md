# Domain-Info-Tool
一个获取网站可用IP地址信息（位置，运行商）的脚本

##如何使用
```
ruby domainInfo.rb 查询域名
```

##效果示例
```
13:19 $ ruby domainInfo.rb droidyue.com
IP:111.202.99.15; Location= 中国 华北 北京市北京市; isp=联通
```

##注意
得到的结果和所在的城市位置和网络有很大关系，即不同的城市或者网络环境下某个域名信息可能不同。
