#import "RSAManager.h"
#import "RSA.h"

@implementation RSAManager

RCT_EXPORT_MODULE();


RCT_EXPORT_METHOD(encryptString:(NSString *)str pubkey:(NSString *)pubkey callback:(RCTResponseSenderBlock)callback)
{
    @try {
  NSString *encrypted = [RSA encryptString:str publicKey:pubkey];
  callback(@[[NSNull null], encrypted]);
    }
    @catch (NSException *exception) {
        callback(@[[NSNull null], @""]);
    }
}

RCT_EXPORT_METHOD(decryptString:(NSString *)str privkey:(NSString *)privkey callback:(RCTResponseSenderBlock)callback)
{
    @try {
        NSString *decrypted = [RSA decryptString:str privateKey:privkey];
        callback(@[[NSNull null], decrypted]);
    }
    @catch (NSException *exception) {
        callback(@[[NSNull null], @""]);
    }
 
}

+ (BOOL)requiresMainQueueSetup
{
    return NO;
}

@end
