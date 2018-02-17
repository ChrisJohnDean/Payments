//
//  InputCollector.h
//  Payments
//
//  Created by Chris Dean on 2018-02-16.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

-(int)inputForPrompt:(NSString*)promptString;

@end
