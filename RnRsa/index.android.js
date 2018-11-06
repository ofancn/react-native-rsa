import { JSEncrypt } from '../plugin/jsencrypt'

const RSA = new JSEncrypt()

export default class RnRsa {
    /**
     * 加密
     */
    static encrypt = (str, pubkey) => {
        return new Promise((resolve, reject) => {
            RSA.setPublicKey(pubkey)
            let encrypted = RSA.encrypt(String(str))
            if (encrypted) {
                resolve(encrypted)
            } else {
                reject('')
            }
        })
    }
    /**
     * 解密
    */
    static decrypt = (str, privkey) => {
        return new Promise((resolve, reject) => {
            RSA.setPrivateKey(privkey)
            let decrypted = RSA.decrypt(String(str))
            if (decrypted) {
                resolve(decrypted)
            } else {
                reject('')
            }
        })
    }

}