//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Chris Dean on 2018-02-17.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void)processPaymentAmount:(NSInteger)paymentAmount {
    NSLog(@"Paypal duhhh");
}

-(BOOL)canProcessPayment {
    float random = arc4random_uniform(2);
    if(random == 0) {
        return NO;
    } else {
        return YES;
    }
}

@end
