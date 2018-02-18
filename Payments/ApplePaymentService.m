//
//  ApplePaymentService.m
//  Payments
//
//  Created by Chris Dean on 2018-02-17.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

-(void)processPaymentAmount:(NSInteger)paymentAmount {
    NSLog(@"Apple duhhh");
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
