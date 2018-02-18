//
//  PaymentGateway.m
//  Payments
//
//  Created by Chris Dean on 2018-02-16.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger)payment {
    
    if([self.paymentDelegate canProcessPayment]) {
        [self.paymentDelegate processPaymentAmount:payment];
        NSLog(@"Your payment of %ld was processed", (long)payment);
    } else {
        NSLog(@"Sorry, your payment can't be processed because you are too poor");
    }
}

@end
