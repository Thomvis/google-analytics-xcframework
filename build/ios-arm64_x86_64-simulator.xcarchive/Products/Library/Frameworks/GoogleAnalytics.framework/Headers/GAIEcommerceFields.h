/*!
 @header    GAIEcommerceFields.h
 @abstract  Google Analytics iOS SDK Ecommerce Hit Format Header
 @copyright Copyright 2014 Google Inc. All rights reserved.
 */

#import <Foundation/Foundation.h>

/*!
 This class provides several fields and methods useful as wire format parameters for
 Enhanced Ecommerce. See the online developer guides for Enhanced Ecommerce for details
 on how to use the Enhanced Ecommerce features.
 */

// Enhanced Ecommerce Product fields
extern NSString *const kGAIProductId;
extern NSString *const kGAIProductName;
extern NSString *const kGAIProductBrand;
extern NSString *const kGAIProductCategory;
extern NSString *const kGAIProductVariant;
extern NSString *const kGAIProductPrice;
extern NSString *const kGAIProductQuantity;
extern NSString *const kGAIProductCouponCode;
extern NSString *const kGAIProductPosition;

extern NSString *const kGAIProductAction;

// product action values
extern NSString *const kGAIPADetail;
extern NSString *const kGAIPAClick;
extern NSString *const kGAIPAAdd;
extern NSString *const kGAIPARemove;
extern NSString *const kGAIPACheckout;
extern NSString *const kGAIPACheckoutOption;
extern NSString *const kGAIPAPurchase;
extern NSString *const kGAIPARefund;

// product action fields
// used for 'purchase' and 'refund' actions
extern NSString *const kGAIPATransactionId;
extern NSString *const kGAIPAAffiliation;
extern NSString *const kGAIPARevenue;
extern NSString *const kGAIPATax;
extern NSString *const kGAIPAShipping;
extern NSString *const kGAIPACouponCode;
// used for 'checkout' action
extern NSString *const kGAICheckoutStep;
extern NSString *const kGAICheckoutOption;
// used for 'detail' and 'click' actions
extern NSString *const kGAIProductActionList;
extern NSString *const kGAIProductListSource;

// Enhanced Ecommerce Impressions fields
extern NSString *const kGAIImpressionName;
extern NSString *const kGAIImpressionListSource;
extern NSString *const kGAIImpressionProduct;
extern NSString *const kGAIImpressionProductId;
extern NSString *const kGAIImpressionProductName;
extern NSString *const kGAIImpressionProductBrand;
extern NSString *const kGAIImpressionProductCategory;
extern NSString *const kGAIImpressionProductVariant;
extern NSString *const kGAIImpressionProductPosition;
extern NSString *const kGAIImpressionProductPrice;

// Enhanced Ecommerce Promotions fields
extern NSString *const kGAIPromotionId;
extern NSString *const kGAIPromotionName;
extern NSString *const kGAIPromotionCreative;
extern NSString *const kGAIPromotionPosition;

// Promotion actions
extern NSString *const kGAIPromotionAction;
extern NSString *const kGAIPromotionView;
extern NSString *const kGAIPromotionClick;

@interface GAIEcommerceFields : NSObject

/*!
 Generates an enhanced ecommerce product field.  Note that field names generated by
 customDimensionForIndex and customMetricForIndex can be used as suffixes.

 @param index the index of the product
 @param suffix the product field suffix (such as kGAIProductPrice).

 @return an NSString representing the product field parameter
 */
+ (NSString *)productFieldForIndex:(NSUInteger)index suffix:(NSString *)suffix;

/*!
 Genrates an enhanced ecommerce impression list field name with an index.  The return value of
 this method should also be used as input to the productImpressionForList method below.

 @param index the index of the impression list

 @return an NSString representing the impression list parameter
 */
+ (NSString *)impressionListForIndex:(NSUInteger)index;

/*!
 Generates an enhanced ecommerce product impression field with the impression list, product index
 and product suffix as parameters.  The output of the method impressionListForIndex above should be
 used as the input list for this method.  The output of customDimensionForIndex and
 customMetricForIndex can be used as suffixes.

 @param list the impression list for this product impression
 @param index the index of this product in the impression list
 @param Suffix the product impression suffix for this field

 @return an NSString representing this product impression field parameter
 */
+ (NSString *)productImpressionForList:(NSString *)list
                                 index:(NSUInteger)index
                                suffix:(NSString *)Suffix;

/*!
 Generates an enhanced ecommerce promotion field with an index and suffix.

 @param index the index of the promotion
 @param suffix the promotion suffix (such as kGAIPromotionId)

 @return an NSString representing this promotion field paramter
 */
+ (NSString *)promotionForIndex:(NSUInteger)index suffix:(NSString *)suffix;
@end
