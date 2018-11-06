#import "RSAManager.h"
#import "AFNetworking.h"
#import "RSA.h"

@implementation RSAManager

RCT_EXPORT_MODULE();


RCT_EXPORT_METHOD(encryptString:(NSString *)str pubkey:(NSString *)pubkey callback:(RCTResponseSenderBlock)callback)
{
  NSString *encrypted = [RSA encryptString:str publicKey:pubkey];
  callback(@[[NSNull null], encrypted]);
}

RCT_EXPORT_METHOD(decryptString:(NSString *)str privkey:(NSString *)privkey callback:(RCTResponseSenderBlock)callback)
{
  NSString *decrypted = [RSA decryptString:str privateKey:privkey];
  callback(@[[NSNull null], decrypted]);
}

+ (BOOL)requiresMainQueueSetup
{
    return YES;
}

@end
