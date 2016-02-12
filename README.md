# Domain-Info-Tool
一个获取网站可用IP地址信息（位置，运行商）的脚本

##如何使用
```
ruby domainInfo.rb 查询域名
```

##效果示例
```
~/oscgit/ruby_works 12:38 $ ruby domainInfo.rb droidyue.com
Information about droidyue.com
IP:220.194.200.252; Location= 中国 华北 河北省石家庄市; isp=联通
IP:60.10.3.45; Location= 中国 华北 河北省廊坊市; isp=联通
IP:121.18.230.86; Location= 中国 华北 河北省保定市; isp=联通

~/oscgit/ruby_works 12:41 $ ruby domainInfo.rb toutiao.io
Information about toutiao.io
IP:182.92.213.160; Location= 中国 华北 北京市北京市; isp=阿里云

~/oscgit/ruby_works 12:41 $ ruby domainInfo.rb gold.xitu.io
Information about gold.xitu.io
IP:180.150.178.221; Location= 中国 华东 上海市上海市; isp=天地祥云
IP:180.150.187.31; Location= 中国 华东 上海市上海市; isp=天地祥云
IP:180.150.179.49; Location= 中国 华东 上海市上海市; isp=天地祥云

~/oscgit/ruby_works 12:41 $ ruby domainInfo.rb www.sina.com.cn
Information about www.sina.com.cn
IP:60.215.128.246; Location= 中国 华东 山东省莱芜市; isp=联通
```

##注意
得到的结果和所在的城市位置和网络有很大关系，即不同的城市或者网络环境下某个域名信息可能不同。
