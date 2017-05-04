//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

+ (Pizza *) largePepperoni{
    
    return [[Pizza new] init:kLarge toppings:[NSArray arrayWithObjects:@"",@"pepperoni", nil]];
}

+ (Pizza *) meatLoverWithSize: (PizzaSize) size
{
    return [[Pizza new] init:size toppings:[NSArray arrayWithObjects:@"",@"meat", nil]];
}


- (void)getOrder: (NSArray *) inputUser {
    
    for (int i = 0; i < inputUser.count; i++) {
        
        if ([inputUser[i] compare:@"pepperoni"] == NSOrderedSame) {
            [Kitchen largePepperoni];
        }
        
        else if ([inputUser[i] compare:@"small"] == NSOrderedSame) {
            
            if ([inputUser[i] compare:@"meatLover"] == NSOrderedSame) {
                [Kitchen meatLoverWithSize:kSmall];
            }
            else {
                [self makePizzaWithSize:kSmall toppings:inputUser];
            }
        }
        
        else if ([inputUser[i] compare:@"medium"] == NSOrderedSame) {
            
            if ([inputUser[i] compare:@"meatLover"] == NSOrderedSame) {
                [Kitchen meatLoverWithSize:kMedium];
            }
            else {
                [self makePizzaWithSize:kMedium toppings:inputUser];
            }
        }
        
        else if ([inputUser[i] compare:@"large"] == NSOrderedSame) {
            
            if ([inputUser[i] compare:@"meatLover"] == NSOrderedSame) {
                [Kitchen meatLoverWithSize:kLarge];
            }
            else {
                [self makePizzaWithSize:kLarge toppings:inputUser];
            }
        }

    }
}

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    return [[Pizza new] init:size toppings:toppings];;
}


@end
