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

#### 服务端（PHP）

1. 生成

```PHP

//生成
$config = [
    'digest_alg' => 'sha512',
    'private_key_bits' => 1024,
    'private_key_type' => OPENSSL_KEYTYPE_RSA
];
$res = openssl_pkey_new($config);
openssl_pkey_export($res, $privKey);
$pubKey = $openssl_pkey_get_details($res)['key'];

//$pubKey 公钥
//$privKey 私钥

```

2. 解密

```js

openssl_private_decrypt(base64_decode($data), $decrypted, $privKey);

//$decrypted 明文

```

#### 其它说明

交流合作QQ:2250691988 邮箱:admin@ofan.cn