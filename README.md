# react-native-rsa

#### 项目介绍
react native RSA 加密

#### 软件架构
IOS原生加密

android 采用 jsencrypt (后期加入原生)


#### 安装教程

1. pod 'react-native-rsa', :path => '../plugin/react-native-rsa'
2. pod install
3. import RSA from './RnRsa'

#### 使用说明

1. 加密

```js

RSA.encrypt(str,pubkey)
            .then(result => {
                //加密成功
            })
            .catch(error => {
                //加密失败
            })

```

2. 解密

```js

RSA.decrypt(str, privkey)
            .then(result => {
                //解密成功
            })
            .catch(error => {
                //解密失败
            })

```

#### 其它说明

交流合作QQ:2250691988 邮箱:admin@ofan.cn