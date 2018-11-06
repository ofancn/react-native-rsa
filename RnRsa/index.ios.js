import { NativeModules } from 'react-native'

const RSAManager = NativeModules.RSAManager

export default class JVerification {
    /**
     * 加密
     */
    static encrypt = (str, pubkey) => {
        return new Promise((resolve, reject) => {
            RSAManager.encryptString(String(str), pubkey, (error, events) => {
                if (error) {
                    reject(error)
                } else {
                    resolve(events)
                }
            }
            )
        })
    }
    /**
     * 解密
    */
    static decrypt = (str, privkey) => {
        return new Promise((resolve, reject) => {
            RSAManager.decryptString(String(str), privkey, (error, events) => {
                if (error) {
                    reject(error)
                } else {
                    resolve(events)
                }
            }
            )
        })
    }

}