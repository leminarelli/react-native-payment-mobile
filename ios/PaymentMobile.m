#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"
#import "React/RCTEventEmitter.h"

@interface RCT_EXTERN_MODULE(PaymentMobile, RCTEventEmitter)

RCT_EXTERN_METHOD(initPaymentProvider:(NSString *)mode)
RCT_EXTERN_METHOD(setUrlScheme:(NSString *)urlScheme)
RCT_EXTERN_METHOD(createTransaction:(NSString *)checkoutID cardBrand:(NSString *)cardBrand cardHolder:(NSString *)cardHolder cardNumber:(NSString *)cardNumber cardExpiryMonth:(NSString *)cardExpiryMonth cardExpiryYear:(NSString *)cardExpiryYear cardCVV:(NSString *)cardCVV resolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(createTransactionWithToken:(NSString *)checkoutID cardBrand:(NSString *)cardBrand tokenID:(NSString *)tokenID cardCVV:(NSString *)cardCVV resolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(submitTransaction:
                  (NSDictionary *)transactionDict
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(getResourcePath:
                  (RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject)
@end