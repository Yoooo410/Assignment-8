//
//  Pizza.h
//  Assignment#8
//
//  Created by yoshitokomiya on 2017-05-02.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject

@property NSArray* allTopping;
@property NSString* size;

- (instancetype)init: (NSInteger)sizePizza toppings:(NSArray *)toppings;
- (void) showOrder;

@end
