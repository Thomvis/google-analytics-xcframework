#pragma mark GAITracker.h
#import <GoogleAnalytics/GAITracker.h>

@interface DummyTracker : NSObject <GAITracker>

@end

#pragma mark GAIDictionaryBuilder.h
#import <GoogleAnalytics/GAIDictionaryBuilder.h>

@implementation GAIDictionaryBuilder
- (GAIDictionaryBuilder *)set:(NSString *)value forKey:(NSString *)key { return self; }
- (GAIDictionaryBuilder *)setAll:(NSDictionary *)params { return self; }
- (NSString *)get:(NSString *)paramName { return @"__dummy"; }
- (NSMutableDictionary *)build { return [NSMutableDictionary new]; }
- (GAIDictionaryBuilder *)setCampaignParametersFromUrl:(NSString *)urlString { return self; }

+ (GAIDictionaryBuilder *)createAppView { return [GAIDictionaryBuilder new]; }
+ (GAIDictionaryBuilder *)createScreenView { return [GAIDictionaryBuilder new]; }
+ (GAIDictionaryBuilder *)createEventWithCategory:(NSString *)category action:(NSString *)action label:(NSString *)label value:(NSNumber *)value { return [GAIDictionaryBuilder new]; }
+ (GAIDictionaryBuilder *)createExceptionWithDescription:(NSString *)description withFatal:(NSNumber *)fatal { return [GAIDictionaryBuilder new]; }
+ (GAIDictionaryBuilder *)createItemWithTransactionId:(NSString *)transactionId name:(NSString *)name sku:(NSString *)sku category:(NSString *)category price:(NSNumber *)price quantity:(NSNumber *)quantity currencyCode:(NSString *)currencyCode { return [GAIDictionaryBuilder new]; }
+ (GAIDictionaryBuilder *)createSocialWithNetwork:(NSString *)network action:(NSString *)action target:(NSString *)target { return [GAIDictionaryBuilder new]; }
+ (GAIDictionaryBuilder *)createTimingWithCategory:(NSString *)category interval:(NSNumber *)intervalMillis name:(NSString *)name label:(NSString *)label { return [GAIDictionaryBuilder new]; }
+(GAIDictionaryBuilder *)createTransactionWithId:(NSString *)transactionId affiliation:(NSString *)affiliation revenue:(NSNumber *)revenue tax:(NSNumber *)tax shipping:(NSNumber *)shipping currencyCode:(NSString *)currencyCode { return [GAIDictionaryBuilder new]; }

- (GAIDictionaryBuilder *)setProductAction:(GAIEcommerceProductAction *)productAction { return self; }
- (GAIDictionaryBuilder *)addProduct:(GAIEcommerceProduct *)product { return self; }
- (GAIDictionaryBuilder *)addProductImpression:(GAIEcommerceProduct *)product impressionList:(NSString *)name impressionSource:(NSString *)source { return self; }
- (GAIDictionaryBuilder *)addPromotion:(GAIEcommercePromotion *)promotion { return self; }

@end

#pragma mark GAIFields.h
#import <GoogleAnalytics/GAIFields.h>

NSString *const kGAIUseSecure = @"__dummy_kGAIUseSecure";

NSString *const kGAIHitType = @"__dummy_kGAIHitType";
NSString *const kGAITrackingId = @"__dummy_kGAITrackingId";
NSString *const kGAIClientId = @"__dummy_kGAIClientId";
NSString *const kGAIDataSource = @"__dummy_kGAIDataSource";
NSString *const kGAIAnonymizeIp = @"__dummy_kGAIAnonymizeIp";
NSString *const kGAISessionControl = @"__dummy_kGAISessionControl";
NSString *const kGAIDeviceModelVersion = @"__dummy_kGAIDeviceModelVersion";
NSString *const kGAIScreenResolution = @"__dummy_kGAIScreenResolution";
NSString *const kGAIViewportSize = @"__dummy_kGAIViewportSize";
NSString *const kGAIEncoding = @"__dummy_kGAIEncoding";
NSString *const kGAIScreenColors = @"__dummy_kGAIScreenColors";
NSString *const kGAILanguage = @"__dummy_kGAILanguage";
NSString *const kGAIJavaEnabled = @"__dummy_kGAIJavaEnabled";
NSString *const kGAIFlashVersion = @"__dummy_kGAIFlashVersion";
NSString *const kGAINonInteraction = @"__dummy_kGAINonInteraction";
NSString *const kGAIReferrer = @"__dummy_kGAIReferrer";
NSString *const kGAILocation = @"__dummy_kGAILocation";
NSString *const kGAIHostname = @"__dummy_kGAIHostname";
NSString *const kGAIPage = @"__dummy_kGAIPage";
NSString *const kGAIDescription = @"__dummy_kGAIDescription";
NSString *const kGAIScreenName = @"__dummy_kGAIScreenName";
NSString *const kGAITitle = @"__dummy_kGAITitle";
NSString *const kGAIAdMobHitId = @"__dummy_kGAIAdMobHitId";
NSString *const kGAIAppName = @"__dummy_kGAIAppName";
NSString *const kGAIAppVersion = @"__dummy_kGAIAppVersion";
NSString *const kGAIAppId = @"__dummy_kGAIAppId";
NSString *const kGAIAppInstallerId = @"__dummy_kGAIAppInstallerId";
NSString *const kGAIUserId = @"__dummy_kGAIUserId";

NSString *const kGAIEventCategory = @"__dummy_kGAIEventCategory";
NSString *const kGAIEventAction = @"__dummy_kGAIEventAction";
NSString *const kGAIEventLabel = @"__dummy_kGAIEventLabel";
NSString *const kGAIEventValue = @"__dummy_kGAIEventValue";

NSString *const kGAISocialNetwork = @"__dummy_kGAISocialNetwork";
NSString *const kGAISocialAction = @"__dummy_kGAISocialAction";
NSString *const kGAISocialTarget = @"__dummy_kGAISocialTarget";

NSString *const kGAITransactionId = @"__dummy_kGAITransactionId";
NSString *const kGAITransactionAffiliation = @"__dummy_kGAITransactionAffiliation";
NSString *const kGAITransactionRevenue = @"__dummy_kGAITransactionRevenue";
NSString *const kGAITransactionShipping = @"__dummy_kGAITransactionShipping";
NSString *const kGAITransactionTax = @"__dummy_kGAITransactionTax";
NSString *const kGAICurrencyCode = @"__dummy_kGAICurrencyCode";

NSString *const kGAIItemPrice = @"__dummy_kGAIItemPrice";
NSString *const kGAIItemQuantity = @"__dummy_kGAIItemQuantity";
NSString *const kGAIItemSku = @"__dummy_kGAIItemSku";
NSString *const kGAIItemName = @"__dummy_kGAIItemName";
NSString *const kGAIItemCategory = @"__dummy_kGAIItemCategory";

NSString *const kGAICampaignSource = @"__dummy_kGAICampaignSource";
NSString *const kGAICampaignMedium = @"__dummy_kGAICampaignMedium";
NSString *const kGAICampaignName = @"__dummy_kGAICampaignName";
NSString *const kGAICampaignKeyword = @"__dummy_kGAICampaignKeyword";
NSString *const kGAICampaignContent = @"__dummy_kGAICampaignContent";
NSString *const kGAICampaignId = @"__dummy_kGAICampaignId";
NSString *const kGAICampaignAdNetworkClickId = @"__dummy_kGAICampaignAdNetworkClickId";
NSString *const kGAICampaignAdNetworkId = @"__dummy_kGAICampaignAdNetworkId";

NSString *const kGAITimingCategory = @"__dummy_kGAITimingCategory";
NSString *const kGAITimingVar = @"__dummy_kGAITimingVar";
NSString *const kGAITimingValue = @"__dummy_kGAITimingValue";
NSString *const kGAITimingLabel = @"__dummy_kGAITimingLabel";

NSString *const kGAIExDescription = @"__dummy_kGAIExDescription";
NSString *const kGAIExFatal = @"__dummy_kGAIExFatal";

NSString *const kGAISampleRate = @"__dummy_kGAISampleRate";

NSString *const kGAIIdfa = @"__dummy_kGAIIdfa";
NSString *const kGAIAdTargetingEnabled = @"__dummy_kGAIAdTargetingEnabled";

// hit types
NSString *const kGAIAppView = @"__dummy_kGAIAppView";
NSString *const kGAIScreenView = @"__dummy_kGAIScreenView";
NSString *const kGAIEvent = @"__dummy_kGAIEvent";
NSString *const kGAISocial = @"__dummy_kGAISocial";
NSString *const kGAITransaction = @"__dummy_kGAITransaction";
NSString *const kGAIItem = @"__dummy_kGAIItem";
NSString *const kGAIException = @"__dummy_kGAIException";
NSString *const kGAITiming = @"__dummy_kGAITiming";

@implementation GAIFields
+ (NSString *)contentGroupForIndex:(NSUInteger)index { return @"__dummy_contentGroupForIndex"; }
+ (NSString *)customDimensionForIndex:(NSUInteger)index { return @"__dummy_customDimensionForIndex"; }
+ (NSString *)customMetricForIndex:(NSUInteger)index { return @"__dummy_customMetricForIndex"; }
@end

#pragma mark GAI.h
#import <GoogleAnalytics/GAI.h>

NSString *const kGAIProduct = @"__dummy_product";

@implementation GAI
+ (GAI *)sharedInstance {
    return [GAI new];
}

- (void)dispatchWithCompletionHandler:(void (^)(GAIDispatchResult))completionHandler {
    completionHandler(kGAIDispatchGood);
}

- (id<GAITracker>)trackerWithTrackingId:(NSString *)trackingId {
    return [self trackerWithName:@"dummy" trackingId:trackingId];
}

- (id<GAITracker>)trackerWithName:(NSString *)name trackingId:(NSString *)trackingId {
    NSLog(@"WARNING: Using dummy implementation of GoogleAnalytics. If you see this warning on a real device, something is wrong. See https://github.com/Thomvis/google-analytics-xcframework for more info.");
    return [DummyTracker new];
}

- (void)dispatch {

}

- (void)removeTrackerByName:(NSString *)name {

}

@end

@implementation DummyTracker

@synthesize allowIDFACollection, name;

- (NSString *)get:(NSString *)parameterName {
    return @"__dummy";
}

- (void)send:(NSDictionary *)parameters {

}

- (void)set:(NSString *)parameterName value:(NSString *)value {

}

@end
