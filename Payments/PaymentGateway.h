//
//  PaymentGateway.h
//  Payments
//
//  Created by Chris Dean on 2018-02-16.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PaymentGateway;

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount:(NSInteger)paymentAmount;
-(BOOL)canProcessPayment;

@end

@interface PaymentGateway : NSObject

@property (weak) id<PaymentDelegate> paymentDelegate;

-(void)processPaymentAmount:(NSInteger)payment;

    

@end
