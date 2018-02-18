//
//  main.m
//  Payments
//
//  Created by Chris Dean on 2018-02-16.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "PaymentGateway.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        float random = (arc4random_uniform(1001) + 100);
        InputCollector* inputCollector = [[InputCollector alloc] init];
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        
        NSString* str = [NSString stringWithFormat:@"Thank you for shopping at Acme.com, your total for today is %.02f Please select your payment method:\n 1: Paypal\n 2: Stripe\n 3: Amazon", random];
        
        int inputToOutput = [inputCollector inputForPrompt:str];
        
        NSLog(@"You selected payment method #%d", inputToOutput);
        
        [paymentGateway processPaymentAmount:random];
    }
    return 0;
}
