//
//  Pizza.m
//  Assignment#8
//
//  Created by yoshitokomiya on 2017-05-02.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)init: (NSInteger)sizePizza toppings:(NSArray *)toppings
{
    self = [super init];
    if (self) {
        _allTopping = [NSArray array];
        _allTopping = toppings;
        
        switch (sizePizza) {
            case 1:
                _size = @"small";
                break;
                
            case 2:
                _size = @"medium";
                break;
            
            case 3:
                _size = @"large";
                break;
                
            default:
                break;
        }
        [self showOrder];
    }
    return self;
}

- (void) showOrder
{
    NSString* pizzaSize = _size;
    NSLog(@"Your pizza size is %@",pizzaSize);
    
    for (int i = 1; i < _allTopping.count; i++) {
        NSLog(@"%@", _allTopping[i]);
    }
}


@end
