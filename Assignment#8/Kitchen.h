//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@interface Kitchen : NSObject

typedef NS_ENUM(NSInteger, PizzaSize) {
    kSmall = 1,
    kMedium,
    kLarge
};

+ (Pizza *) largePepperoni;
+ (Pizza *) meatLoverWithSize: (PizzaSize) size;
- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;
- (void)getOrder: (NSArray *) iputUser;



@end
