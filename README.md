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
                action(result)
            })
            .catch(error => {
               
            })

```

2. 解密

```js

RSA.decrypt(str, privkey)
            .then(result => {
                action(result)
            })
            .catch(error => {
                action('')
            })

```