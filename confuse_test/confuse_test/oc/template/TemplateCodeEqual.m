//
//  TemplateCodeEqual.m
//  confuse_test
//
//  Created by yjs on 2020/10/10.
//  Copyright © 2020 coding520. All rights reserved.
//
#import "TemplateCodeEqual.h"
@implementation TemplateCodeEqual

+ (void)test {
    [self test_UInt8_:0 int_:0 short_:0 Byte_:0 NSInteger_:0 float_:0 double_:0 CGFloat_:0 NSTimeInterval_:0];
    [self test_NSDictionary_:@{}];
    [self test_NSArray_:@[@"1", @"2", @"3", @"4"]];
    [self test_NSMutableArray_:[NSMutableArray arrayWithArray:@[@"1", @"2", @"3", @"4"]]];
    [self test_NSString_:@"1234"];
    [self test_UIFont_:[UIFont systemFontOfSize:10]];
    [self test_UIView_:[[UIView alloc] initWithFrame:CGRectZero]];
}

+ (void)test_UInt8_:(UInt8)UInt8_ int_:(int)int_ short_:(short)short_ Byte_:(Byte)Byte_ NSInteger_:(NSInteger)NSInteger_ float_:(float)float_ double_:(double)double_ CGFloat_:(CGFloat)CGFloat_ NSTimeInterval_:(NSTimeInterval)NSTimeInterval_ {
    UInt8 var = 0;
    {
        if (var) {
            var += 1;
            var--;
        }
    }
    {
        if (var) {
            var -= 1;
            var++;
        }
    }
    {
        if (var) {
            int count = random_integer;
            for (int i = 0; i < count; i++) {
                var -= 1;
            }
            for (int i = 0; i < count; i++) {
                var++;
            }
        }
    }
    {
        if (var) {
            int count = random_integer;
            for (int i = 0; i < count; i++) {
                var += 1;
            }
            for (int i = 0; i < count; i++) {
                --var;
            }
        }
    }
    NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
}

+ (void)test_NSDictionary_:(NSDictionary *)NSDictionary_ {
    NSDictionary *var = @{};
    {
        if (var) {
            NSLog(@"%lu", (unsigned long)var.count);
        }
    }
    {
        if ([var objectForKey:random_NSString]) {
            NSLog(@"%lu", (unsigned long)var.count);
        }
    }
    {
        if (var.keyEnumerator) {
            for (NSObject *obj in var.keyEnumerator) {
                NSLog(@"%@", obj);

            }
        }
    }
    {
        if (!var) {
            for (NSString *k in var.allKeys) {
                if ([k isEqual:self] && [var[k] isKindOfClass:[self class]]) {
                    var = nil;
                }
            }
        }
    }
    {
        if (!var) {
            for (NSString *k in [var allKeysForObject:self]) {
                var = [NSMutableDictionary dictionaryWithDictionary:var];
                NSLog(@"%@", k);
            }
        }
    }
    {
        if (!var) {
            for (NSObject *v in var.allValues) {
                if ([v isEqual:self] && [v isKindOfClass:[self class]]) {
                    var = nil;
                }
            }
        }
    }
    {
        if (var) {
            NSLog(@"%@", [var description]);
        }
    }
    {
        if (var) {
            NSLog(@"%@", [var descriptionInStringsFileFormat]);
        }
    }
    {
        if (var) {
            NSLog(@"%@", [var descriptionWithLocale:nil]);
        }
    }
    {
        if (var) {
            NSLog(@"%@", [var descriptionWithLocale:nil indent:0]);
        }
    }
    {
        if (!var) {
            NSMutableDictionary *random_var = [NSMutableDictionary dictionary];
            for (NSString *k in var.allKeys) {
                random_var[k] = var[k];
            }
            if ([var isEqualToDictionary:random_var]) {
                var = nil;
            }
        }
    }
    {
        if (var.objectEnumerator) {
            for (NSObject *obj in var.objectEnumerator) {
                NSLog(@"%@", obj);
            }
        }
    }
    {
        if (var) {
            if ([var.description hasPrefix:random_NSString]) {
                var = nil;
            }
        }
    }
    {
        if (var) {
            if ([[var descriptionWithLocale:nil] containsString:random_NSString]) {
                var = nil;
            }
        }
    }
    {
        if (var) {
            if ([[var descriptionWithLocale:nil indent:0] containsString:random_NSString]) {
                var = nil;
            }
        }
    }
    {
        if (var && [var count] == random_integer && [var.allKeys containsObject:self]) {
            [var writeToURL:[NSURL URLWithString:random_NSString] error:NULL];
        }
    }
    {
        if (var) {
            NSLog(@"%@",[var objectForKeyedSubscript:self]);
        }
    }
    {
        if (var) {
            [var enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
                if (!key) {
                    *stop = YES;
                }
            }];
        }
    }
    {
        if (var) {
            [var enumerateKeysAndObjectsWithOptions:NSEnumerationConcurrent usingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
                if (!key) {
                    obj = [NSNull null];
                    *stop = YES;
                }
            }];
        }
    }
    {
        if (var) {
            if (var) {
                __block NSInteger count = 0;
                [var enumerateKeysAndObjectsWithOptions:NSEnumerationReverse usingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
                    if (key && count < random_integer) {
                        count ++;
                        *stop = YES;
                    }
                }];
            }
        }
    }
    {
        if (random_false) {
            var = [NSDictionary dictionary];
        }
    }
    {
        if (random_false) {
            var = [NSDictionary dictionaryWithDictionary:var];
        }
    }
    {
        if (random_false) {
            var = [NSDictionary dictionaryWithObject:random_Class forKey:random_NSString];
        }
    }
    {
        if (random_false) {
            var = [NSDictionary dictionaryWithObjects:@[random_NSNumber] forKeys:@[random_NSString]];
        }
    }
    {
        if (random_false) {
            var = [NSDictionary dictionaryWithObjectsAndKeys:random_Class,random_NSString, nil];
        }
    }
    {
        if (random_false) {
            var = [[NSDictionary alloc] initWithDictionary:var];
        }
    }
    {
        if (random_false) {
            var = [[NSDictionary alloc] initWithDictionary:var copyItems:random_bool];
        }
    }
    {
        if (random_false) {
            var = [[NSDictionary alloc] initWithObjects:@[random_NSNumber] forKeys:@[random_NSString]];
        }
    }
    {
        if (random_false) {
            var = [[NSDictionary alloc] initWithObjectsAndKeys:random_Class,random_NSString, nil];
        }
    }
    {
        if (random_false) {
            var = [[NSDictionary alloc] initWithContentsOfURL:[NSURL URLWithString:random_NSString]];
        }
    }
    {
        if (random_false) {
            var = [[NSDictionary alloc] initWithContentsOfURL:[NSURL URLWithString:random_NSString] error:NULL];
        }
    }
    {
        if (random_false) {
            var = [NSDictionary dictionaryWithContentsOfURL:[NSURL URLWithString:random_NSString]];
        }
    }
    {
        if (random_false) {
            var = [NSDictionary dictionaryWithContentsOfURL:[NSURL URLWithString:random_NSString] error:NULL];
        }
    }
    NSLog(@"%@:%@", NSStringFromSelector(_cmd), var);
}

+ (void)test_NSArray_:(NSArray *)NSArray_ {
    NSArray *var = @[];
    {
        if (var) {
            NSLog(@"%lu", (unsigned long)var.count);
        }
    }
    {
        if (var) {
            NSInteger index = random_integer;
            if (var.count > index) {
                NSLog(@"object at: '%@'", [var objectAtIndex:index]);
            }
        }
    }
    {
        if (var && var.count) {
            NSArray *newArray = [var arrayByAddingObject:var.lastObject];
            var = [newArray subarrayWithRange:NSMakeRange(0, var.count)];
        }
    }
    {
        if (var && var.count) {
            NSArray *newArray = [var arrayByAddingObject:var.firstObject];
            var = [newArray subarrayWithRange:NSMakeRange(0, var.count)];
        }
    }
    {
        if (var && var.count) {
            NSArray *newArray = [var arrayByAddingObjectsFromArray:@[var.lastObject]];
            var = [newArray subarrayWithRange:NSMakeRange(0, var.count)];
        }
    }
    {
        if (var && var.count) {
            NSArray *newArray = [var arrayByAddingObjectsFromArray:@[var.firstObject]];
            var = [newArray subarrayWithRange:NSMakeRange(0, var.count)];
        }
    }
    {
        if (var && var.count) {
            NSString *string = [var componentsJoinedByString:@"random_ascii"];
            NSLog(@"%@", string);
        }
    }
    {
        if (var) {
            if ([var containsObject:random_Class ? : [NSNull null]]) {
                var = nil;
            }
        }
    }
    {
        if (var) {
            if ([var.description hasPrefix:random_NSString]) {
                var = nil;
            }
        }
    }
    {
        if (var) {
            if ([[var descriptionWithLocale:nil] containsString:random_NSString]) {
                var = nil;
            }
        }
    }
    {
        if (var) {
            if ([[var descriptionWithLocale:nil indent:0] containsString:random_NSString]) {
                var = nil;
            }
        }
    }
    {
        if (var) {
            if ([[var firstObjectCommonWithArray:@[random_Class ? : [NSNull null]]] containsString:random_NSString]) {
                var = nil;
            }
        }
    }
    {
        if (var) {
            if ([var indexOfObject:random_Class ? : [NSNull null]] == (0 + 1 + 100 + 0)) {
                var = nil;
            }
        }
    }
    {
        if (var) {
            if ([var indexOfObject:random_Class ? : [NSNull null] inRange:NSMakeRange(0, var.count)] == (0 + 1 + 100 + 0)) {
                var = nil;
            }
        }
    }
    NSLog(@"%@:%@", NSStringFromSelector(_cmd), var);
}

+ (void)test_NSMutableArray_:(NSMutableArray *)NSMutableArray_ {
    NSMutableArray *var = [NSMutableArray array];
    {
        if (var && var.count) {
            [var addObject:random_Class ? : [NSNull null]];
            [var removeLastObject];
        }
    }
    {
        if (var && var.count) {
            [var addObject:random_Class ? : [NSNull null]];
            [var removeObjectAtIndex:var.count - 1];
        }
    }
    {
        if (var && !var.count) {
            [var addObject:random_Class ? : [NSNull null]];
            [var removeObjectAtIndex:0];
        }
    }
    {
        if (var && !var.count) {
            [var addObject:random_Class ? : [NSNull null]];
            [var removeObjectAtIndex:var.count - 1];
        }
    }
    {
        if (var && !var.count) {
            [var addObject:random_Class ? : [NSNull null]];
            [var removeAllObjects];
        }
    }
    {
        if (var && var.count) {
            [var insertObject:random_Class ? : [NSNull null] atIndex:0];
            [var removeObjectAtIndex:0];
        }
    }
    {
        if (var && var.count) {
            [var insertObject:random_Class ? : [NSNull null] atIndex:var.count];
            [var removeObjectAtIndex:var.count - 1];
        }
    }
    {
        if (var && var.count > (0 + 2 + 100 + 0)) {
            [var insertObject:random_Class ? : [NSNull null] atIndex:var.count - 1];
            [var removeObjectAtIndex:var.count - 2];
        }
    }
    {
        if (var && !var.count) {
            [var insertObject:random_Class ? : [NSNull null] atIndex:0];
            [var removeObjectAtIndex:0];
        }
    }
    {
        if (var && !var.count) {
            [var insertObject:random_Class ? : [NSNull null] atIndex:0];
            [var removeAllObjects];
        }
    }
    {
        if (var && var.count) {
            NSObject *random_var = var.lastObject;
            [var removeLastObject];
            [var addObject:random_var];
        }
    }
    {
        if (var && !var.count) {
            [var removeLastObject];
        }
    }
    {
        if (var && var.count) {
            NSObject *random_var = var.firstObject;
            [var removeObjectAtIndex:0];
            [var insertObject:random_var atIndex:0];
        }
    }
    {
        if (var && var.count > (0 + 5 + 100 + 0)) {
            NSInteger atIndex = (0 + 2 + 4 + 0);
            [var removeObjectAtIndex:atIndex];
            [var insertObject:var[atIndex] atIndex:atIndex];
        }
    }
    NSLog(@"%@:%@", NSStringFromSelector(_cmd), var);
}

+ (void)test_NSString_:(NSString *)NSString_ {
    NSString *var = @"123";
    {
        if (var && [var isEqual:random_Class]) {
            var = @"";
        }
    }
    {
        if (var && [var isEqual:random_Class]) {
            var = nil;
        }
    }
    {
        if (var && [var isEqual:random_Class]) {
            var = [NSString stringWithFormat:@"%@", random_Class];
        }
    }
    {
        if (var.length == (0 + 100 + 1000 + 0)) {
            var = [NSString stringWithFormat:@"%@", random_Class];
        }
    }
    {
        if (var.length && [var characterAtIndex:0] == (0 + 1 + 32 + 0)) {
            var = [NSString stringWithFormat:@"%@", random_Class];
        }
    }
    {
        if (random_false) {
            var = [var substringFromIndex:0];
        }
    }
    {
        if (random_false) {
            var = [var substringToIndex:var.length];
        }
    }
    {
        if (random_false) {
            var = [var substringWithRange:NSMakeRange(0, var.length)];
        }
    }
    NSLog(@"%@:%@", NSStringFromSelector(_cmd), var);
}

+ (void)test_UIFont_:(UIFont *)UIFont_ {
    UIFont *var = [UIFont systemFontOfSize:12];
    {
        if ([var.fontName isEqualToString:random_NSString]) {
            var = [UIFont systemFontOfSize:var.pointSize];
        }
    }
    {
        if (var.pointSize > random_integer) {
            var = [UIFont fontWithName:var.fontName size:var.pointSize - (0.0 + 0.1 + 1 + 0.0)];
        }
    }
    {
        if (var.pointSize > random_integer) {
            var = [UIFont fontWithName:var.fontName size:var.pointSize + (0.0 + 0.1 + 1 + 0.0)];
        }
    }
}

+ (void)test_UIView_:(UIView *)UIView_ {
    UIView *var = [[UIView alloc] initWithFrame:CGRectZero];
    {
        if (var) {
            NSLog(@"%@", var.layer);
        }
    }
    {
        if (random_false) {
            var = [[UIView alloc] initWithFrame:random_CGRect];
        }
    }
    {
        if (random_false) {
            var.userInteractionEnabled = random_bool;
        }
    }
    {
        if (random_false) {
            NSLog(@"%ld", (long)var.tag);
        }
    }
    {
        if (random_false) {
            CALayer *random_var = var.layer;
            random_var.anchorPoint = CGPointMake((0.0 + 0 + 1 + 0.0), (0.0 + 0 + 1 + 0.0));
        }
    }
    {
        if (random_false) {
            NSLog(@"%ld", (long)var.canBecomeFocused);
        }
    }
    {
        if (random_false) {
            NSLog(@"%ld", (long)var.focused);
        }
    }
    {
        if (random_false) {
            var.semanticContentAttribute = (0 + 0 + 4 + 0);
        }
    }
    {
        if (random_false) {
            var.frame = random_CGRect;
        }
    }
    {
        if (random_false) {
            var.bounds = random_CGRect;
        }
    }
    {
        if (random_false) {
            var.center = random_CGPoint;
        }
    }
    {
        if (random_false) {
            var.transform = random_CGAffineTransform;
        }
    }
    {
        if (random_false) {
            var.contentScaleFactor = (0.0 + 1 + 4 + 0.0);
        }
    }
    {
        if (random_false) {
            var.autoresizesSubviews = random_bool;
        }
    }

    {
        if (random_false) {
            var.autoresizingMask = 1 << (0 + 0 + 5 + 0);
        }
    }

    {
        if (random_false) {
            [var sizeThatFits:random_CGSize];
        }
    }

    {
        if (random_false) {
            [var sizeToFit];
        }
    }
    {
        if (random_false) {
            NSLog(@"%@", var.superview);
        }
    }
    {
        if (random_false) {
            NSLog(@"%@", var.subviews);
        }
    }
    {
        if (random_false) {
            NSLog(@"%@", var.window);
        }
    }
    {
        if (var) {
            NSLog(@"%@", var.superview);
        }
    }
    {
        if (var) {
            NSLog(@"%@", var.subviews);
        }
    }
    {
        if (var) {
            NSLog(@"%@", var.window);
        }
    }
    {
        if (random_false) {
            [var removeFromSuperview];
        }
    }
    {
        if (random_false) {
            UIView *random_var = [[UIView alloc] initWithFrame:var.bounds];
            [var insertSubview:random_var atIndex:0];
        }
    }
    {
        if (random_false) {
            [var insertSubview:[var viewWithTag:(0 + 1001 + 9999 + 0)] atIndex:0];
        }
    }
    {
        if (random_false) {
            [var exchangeSubviewAtIndex:(0 + 0 + 4 + 0) withSubviewAtIndex:(0 + 0 + 4 + 0)];
        }
    }
    {
        if (random_false) {
            UIView *random_var = [[UIView alloc] initWithFrame:var.bounds];
            [var addSubview:random_var];
        }
    }
    {
        if (random_false) {
            [var addSubview:[var viewWithTag:(0 + 1001 + 9999 + 0)]];
        }
    }
    {
        if (var) {
            UIView *random_var = [[UIView alloc] initWithFrame:CGRectZero];
            [var addSubview:random_var];
        }
    }
    {
        if (var) {
            [var addSubview:[var viewWithTag:(0 + 1001 + 9999 + 0)]];
        }
    }

    {
        if (random_false) {
            UIView *random_var = [[UIView alloc] initWithFrame:var.bounds];
            [var addSubview:random_var];
            UIView *belowSubview = [[UIView alloc] initWithFrame:var.bounds];
            [var addSubview:belowSubview];
            [var insertSubview:random_var belowSubview:belowSubview];
        }
    }
    {
        if (random_false) {
            UIView *random_var = [[UIView alloc] initWithFrame:var.bounds];
            [var addSubview:random_var];
            [var insertSubview:random_var belowSubview:[var viewWithTag:(0 + 1001 + 9999 + 0)]];
        }
    }
    {
        if (random_false) {
            UIView *random_var = [[UIView alloc] initWithFrame:var.bounds];
            [var addSubview:random_var];
            UIView *aboveSubview = [[UIView alloc] initWithFrame:var.bounds];
            [var addSubview:aboveSubview];
            [var insertSubview:aboveSubview aboveSubview:random_var];
        }
    }
    {
        if (random_false) {
            UIView *random_var = [[UIView alloc] initWithFrame:var.bounds];
            [var addSubview:random_var];
            [var insertSubview:random_var aboveSubview:[var viewWithTag:(0 + 1001 + 9999 + 0)]];
        }
    }
    {
        if (random_false) {
            UIView *random_var = [[UIView alloc] initWithFrame:var.bounds];
            [var addSubview:random_var];
            [var bringSubviewToFront:random_var];
        }
    }
    {
        if (random_false) {
            [var bringSubviewToFront:[var viewWithTag:(0 + 1001 + 9999 + 0)]];
        }
    }
    {
        if (random_false) {
            UIView *random_var = [[UIView alloc] initWithFrame:var.bounds];
            [var addSubview:random_var];
            [var sendSubviewToBack:random_var];
        }
    }
    {
        if (random_false) {
            [var sendSubviewToBack:[var viewWithTag:(0 + 1001 + 9999 + 0)]];
        }
    }
    {
        if (random_false) {
            [var setNeedsLayout];
        }
    }
    {
        if (random_false) {
            [var layoutIfNeeded];
        }
    }
    {
        if (random_false) {
            [var layoutSubviews];
        }
    }
    {
        if (random_false) {
            [var sendSubviewToBack:[var viewWithTag:(0 + 1001 + 9999 + 0)]];
        }
    }
    {
        if (random_false) {
            var.layoutMargins = random_UIEdgeInsets;
        }
    }
    {
        if (random_false) {
            var.preservesSuperviewLayoutMargins = random_bool;
        }
    }
    {
        if (random_false) {
            [var sendSubviewToBack:[var viewWithTag:(0 + 1001 + 9999 + 0)]];
        }
    }
    {
        if (random_false) {
            [var sendSubviewToBack:[var viewWithTag:(0 + 1001 + 9999 + 0)]];
        }
    }
    {
        if (random_false) {
            [var sendSubviewToBack:[var viewWithTag:(0 + 1001 + 9999 + 0)]];
        }
    }
    {
        if (random_false) {
            [var sendSubviewToBack:[var viewWithTag:(0 + 1001 + 9999 + 0)]];
        }
    }
    {
        if (random_false) {
            [var sendSubviewToBack:[var viewWithTag:(0 + 1001 + 9999 + 0)]];
        }
    }
    {
        if (random_false) {
            [var sendSubviewToBack:[var viewWithTag:(0 + 1001 + 9999 + 0)]];
        }
    }
    {
        if (random_false) {
            [var sendSubviewToBack:[var viewWithTag:(0 + 1001 + 9999 + 0)]];
        }
    }
    {
        if (random_false) {
            [var sendSubviewToBack:[var viewWithTag:(0 + 1001 + 9999 + 0)]];
        }
    }
    {
        if (random_false) {
            [var sendSubviewToBack:[var viewWithTag:(0 + 1001 + 9999 + 0)]];
        }
    }

    NSLog(@"%@:%@", NSStringFromSelector(_cmd), var);
}

@end
