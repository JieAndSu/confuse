//
//  TemplateClass.m
//  confuse_test
//
//  Created by yjs on 2020/10/21.
//  Copyright © 2020 coding520. All rights reserved.
//

#import "TemplateClass.h"


@implementation TemplateClass

+ (void)test {
    NSObject *obj = [[NSObject alloc] init];
    UILabel *label = [[UILabel alloc] init];
    label.text = @"123";
    label.attributedText = [[NSAttributedString alloc] initWithString:@"123"];

    UIView *view = [[UIView alloc] initWithFrame:CGRectZero];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectZero];

    [self test_false_:@[@"1", @"2", @"3"] NSObject_:obj NSString_:@"123" UIView_:view UIImageView_:imageView];
    [self test_false_:@[@"1", @"2", @"3"] NSObject_:obj NSString_:@"" UIView_:view UIImageView_:imageView];
    [self test_false_:@[@"1", @"2", @"3"] NSObject_:obj NSString_:nil UIView_:view UIImageView_:imageView];

    [self test_bool_:nil NSString_:nil];
    [self test_integer_:nil NSString_:nil];
    [self test_decimal_:nil];

    [self test_NSRange_:nil];
    [self test_UIEdgeInsets_:nil];
    [self test_CGPoint_:nil];
    [self test_CGSize_:nil];
    [self test_CGRect_:nil];

    [self test_NSString_:nil UILabel_:nil];
    [self test_NSNumber_:nil];
    [self test_NSNull_:nil];
    [self test_UIFont_:nil];
    [self test_UIColor_:nil];
    [self test_NSData_:nil];
    [self test_UIImage_:nil];
}

+ (void)test_false_:(NSArray *)NSArray_ NSObject_:(NSObject *)NSObject_ NSString_:(NSString *)NSString_ UIView_:(UIView *)UIView_ UIImageView_:(UIImageView *)UIImageView_{
    {
        Boolean condition = 0;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), condition);
    }
    NSMutableString *result = [NSMutableString string];
    {
        Boolean condition = [self isEqual:NSObject_];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = NSObject_.hash == random_integer;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = !NSObject_.isProxy;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [NSObject_ isKindOfClass:random_Class];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [NSObject_ isMemberOfClass:random_Class];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [NSObject_ conformsToProtocol:@protocol(random_protocol)];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [NSObject_ respondsToSelector:@selector(random_selector)];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [[NSObject_ class] instancesRespondToSelector:@selector(random_selector)];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [[NSObject_ class] conformsToProtocol:@protocol(random_protocol)];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [[NSObject_ class] isSubclassOfClass:random_Class];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [[NSObject_ class] resolveClassMethod:@selector(random_selector)];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [[NSObject_ class] resolveInstanceMethod:@selector(random_selector)];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [NSObject_ hash] == random_integer;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [[NSObject_ description] isEqualToString:random_NSString];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [[NSObject_ debugDescription] isEqualToString:random_NSString];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [[self superclass] isEqual:NSObject_];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [[NSObject_ superclass] isKindOfClass:random_Class];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [[NSObject_ superclass] isMemberOfClass:random_Class];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [[NSObject_ superclass] conformsToProtocol:@protocol(random_protocol)];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [[NSObject_ superclass] respondsToSelector:@selector(random_selector)];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [[NSObject_ superclass] instancesRespondToSelector:@selector(random_selector)];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [[NSObject_ superclass] conformsToProtocol:@protocol(random_protocol)];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [[NSObject_ superclass] isSubclassOfClass:random_Class];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [[NSObject_ superclass] resolveClassMethod:@selector(random_selector)];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [[NSObject_ superclass] resolveInstanceMethod:@selector(random_selector)];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [[[NSObject_ superclass] description] isEqualToString:random_NSString];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [[[NSObject_ superclass] debugDescription] isEqualToString:random_NSString];
        [result appendFormat:@"%d", condition];
    }
    NSLog(@"%@:%@:%@", NSStringFromSelector(_cmd), [NSArray class], result);

    [result deleteCharactersInRange:NSMakeRange(0, result.length)];
    {
        Boolean condition = NSArray_ == nil;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = NSArray_.count == random_integer;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = NSArray_.count > random_integer && [NSArray_ objectAtIndex:0] != nil;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [NSArray_ containsObject:random_Class ? : [NSNull null]];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = NSArray_.count > random_integer && [NSArray_ indexOfObject:random_Class ? : [NSNull null] inRange:NSMakeRange(0, NSArray_.count)];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [NSArray_ indexOfObjectIdenticalTo:random_Class ? : [NSNull null]];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = NSArray_.count > random_integer && [NSArray_ indexOfObjectIdenticalTo:random_Class ? : [NSNull null] inRange:NSMakeRange(0, NSArray_.count)];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [NSArray_ firstObject] == [NSArray_ lastObject];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [NSArray_ objectEnumerator] == [NSArray_ reverseObjectEnumerator];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = NSArray_.count == random_integer && [NSArray_ subarrayWithRange:random_NSRange].count;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = NSArray_.count > random_integer && [NSArray_ objectsAtIndexes:[NSIndexSet indexSetWithIndex:0]].count;
        [result appendFormat:@"%d", condition];
    }

    NSLog(@"%@:%@:%@", NSStringFromSelector(_cmd), [NSArray class], result);

    [result deleteCharactersInRange:NSMakeRange(0, result.length)];
    {
        Boolean condition = NSString_.length == random_integer;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [NSString_ isEqualToString:random_NSString];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [NSString_ hasPrefix:random_NSString];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [NSString_ hasSuffix:random_NSString];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [NSString_ containsString:random_NSString];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [NSString_ localizedCaseInsensitiveContainsString:random_NSString];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [NSString_ localizedStandardContainsString:random_NSString];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = NSString_ && [NSString_ localizedStandardRangeOfString:random_NSString].location == 0;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = NSString_ && [NSString_ rangeOfString:random_NSString].location == 0;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = NSString_ && [NSString_ rangeOfString:random_NSString options:1 << (0 + 0 + 3 + 0)].location == 0;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = NSString_ && [NSString_ rangeOfString:random_NSString options:1 << (0 + 6 + 10 + 0)].location == 0;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = NSString_ && [NSString_ rangeOfString:random_NSString options:1 << (0 + 0 + 3 + 0) range:NSMakeRange(0, NSString_.length)].location == 0;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = NSString_ && [NSString_ rangeOfString:random_NSString options:1 << (0 + 6 + 10 + 0) range:NSMakeRange(0, NSString_.length)].location == 0;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = NSString_ && [NSString_ rangeOfString:random_NSString options:1 << (0 + 0 + 3 + 0) range:NSMakeRange(0, NSString_.length) locale:nil].location == 0;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = NSString_ && [NSString_ rangeOfString:random_NSString options:1 << (0 + 6 + 10 + 0) range:NSMakeRange(0, NSString_.length) locale:nil].location == 0;
        [result appendFormat:@"%d", condition];
    }

    {
        Boolean condition = NSString_ && [NSString_ localizedStandardRangeOfString:random_NSString].location == 0;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = NSString_ && [NSString_ localizedStandardRangeOfString:random_NSString].location == 0;
        [result appendFormat:@"%d", condition];
    }
    NSLog(@"%@:%@:%@", NSStringFromSelector(_cmd), [NSString_ class], result);

    [result deleteCharactersInRange:NSMakeRange(0, result.length)];
    {
        Boolean condition = UIView_.tag == (0 + 1001 + 9999 + 0);
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.tag < 0;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.tag != 0;
        [result appendFormat:@"%d", condition];
    }

    {
        Boolean condition = UIView_.layer.position.x != 0;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.layer.position.y != 0;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.layer.zPosition != 0;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.layer.anchorPoint.x != 0.5;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.layer.anchorPoint.y != 0.5;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.layer.anchorPointZ != 0;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.layer.hidden != NO;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.layer.doubleSided != YES;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.layer.sublayers.count != 0;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.layer.mask != nil;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.layer.masksToBounds != NO;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [UIView_.layer containsPoint:CGPointMake(-(0.0 + 1 + 10 + 0.0), (0.0 + 1 + 10 + 0.0))];
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.layer.contents != nil;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.layer.contentsRect.origin.x != 0;
        [result appendFormat:@"%d", condition];
    }    {
        Boolean condition = UIView_.layer.contentsRect.origin.y != 0;
        [result appendFormat:@"%d", condition];
    }    {
        Boolean condition = UIView_.layer.contentsRect.size.width != 1;
        [result appendFormat:@"%d", condition];
    }    {
        Boolean condition = UIView_.layer.contentsRect.size.height != 1;
        [result appendFormat:@"%d", condition];
    }

    {
        Boolean condition = UIView_.userInteractionEnabled != YES;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.canBecomeFocused != NO;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.semanticContentAttribute != 0;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.bounds.origin.x != 0;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.bounds.origin.y != 0;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = !CGAffineTransformEqualToTransform(UIView_.transform, CGAffineTransformIdentity);
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.autoresizesSubviews != YES;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.autoresizingMask != UIViewAutoresizingNone;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.superview != nil;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [UIView_ isDescendantOfView:UIView_] != YES;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = [UIView_ viewWithTag:(0 + 1001 + 9999 + 0)] != nil;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIView_.preservesSuperviewLayoutMargins != NO;
        [result appendFormat:@"%d", condition];
    }

    NSLog(@"%@:%@:%@", NSStringFromSelector(_cmd), [UIView_ class], result);

    [result deleteCharactersInRange:NSMakeRange(0, result.length)];
    {
        Boolean condition = UIImageView_.image == nil;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIImageView_.highlightedImage != nil;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIImageView_.userInteractionEnabled == YES;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIImageView_.highlighted == YES;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIImageView_.animationImages.count == random_integer;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIImageView_.highlightedAnimationImages.count == random_integer;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIImageView_.animationDuration == random_decimal;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIImageView_.animationRepeatCount == random_integer;
        [result appendFormat:@"%d", condition];
    }
    {
        Boolean condition = UIImageView_.animating == YES;
        [result appendFormat:@"%d", condition];
    }
    NSLog(@"%@:%@:%@", NSStringFromSelector(_cmd), [UIImageView_ class], result);
}

+ (void)test_bool_:(UIView *)UIView_ NSString_:(NSString *)NSString_ {
    {
        Boolean var = YES;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = NO;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = true;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = false;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = 1;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = 0;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }

    {
        Boolean var = UIView_.userInteractionEnabled;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = UIView_.canBecomeFocused;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = UIView_.focused;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }

    {
        Boolean var = NSString_.length == random_integer;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = [NSString_ isEqualToString:random_NSString];
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = [NSString_ hasPrefix:random_NSString];
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = [NSString_ hasSuffix:random_NSString];
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = [NSString_ containsString:random_NSString];
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = [NSString_ localizedCaseInsensitiveContainsString:random_NSString];
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = [NSString_ localizedStandardContainsString:random_NSString];
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = [NSString_ localizedStandardRangeOfString:random_NSString].location != 0;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = [NSString_ rangeOfString:random_NSString].location != 0;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = [NSString_ rangeOfString:random_NSString options:1 << (0 + 0 + 3 + 0)].location != 0;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = [NSString_ rangeOfString:random_NSString options:1 << (0 + 6 + 10 + 0)].location != 0;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = [NSString_ rangeOfString:random_NSString options:1 << (0 + 0 + 3 + 0) range:NSMakeRange(0, 0)].location != 0;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = [NSString_ rangeOfString:random_NSString options:1 << (0 + 6 + 10 + 0) range:NSMakeRange(0, 0)].location != 0;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = [NSString_ rangeOfString:random_NSString options:1 << (0 + 0 + 3 + 0) range:NSMakeRange(0, NSString_.length) locale:nil].location != 0;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = [NSString_ rangeOfString:random_NSString options:1 << (0 + 6 + 10 + 0) range:NSMakeRange(0, NSString_.length) locale:nil].location != 0;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }

    {
        Boolean var = [NSString_ localizedStandardRangeOfString:random_NSString].location != 0;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
    {
        Boolean var = [NSString_ localizedStandardRangeOfString:random_NSString].location != 0;
        NSLog(@"%@:%d", NSStringFromSelector(_cmd), var);
    }
}

+ (void)test_integer_:(UIView *)UIView_ NSString_:(NSString *)NSString_ {
    {
        long var = random_negative(0 + 0 + 640 + 0);
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = UIView_.tag;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = UIView_.canBecomeFocused;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = UIView_.focused;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = UIView_.semanticContentAttribute;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = UIView_.effectiveUserInterfaceLayoutDirection;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = (long)UIView_.frame.origin.x;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = (long)UIView_.frame.origin.y;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = (long)UIView_.frame.size.width;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = (long)UIView_.frame.size.height;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = (long)UIView_.bounds.origin.x;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = (long)UIView_.bounds.origin.y;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = (long)UIView_.bounds.size.width;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = (long)UIView_.bounds.size.height;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }

    {
        long var = (long)UIView_.center.x;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = (long)UIView_.center.y;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = (long)UIView_.contentScaleFactor;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = UIView_.multipleTouchEnabled;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = UIView_.exclusiveTouch;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = UIView_.autoresizesSubviews;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = UIView_.autoresizingMask;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }

    {
        long var = NSString_.length;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ isEqualToString:random_NSString];
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ hasPrefix:random_NSString];
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ hasSuffix:random_NSString];
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ containsString:random_NSString];
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ localizedCaseInsensitiveContainsString:random_NSString];
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ localizedStandardRangeOfString:random_NSString].location;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ localizedStandardRangeOfString:random_NSString].length;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ rangeOfString:random_NSString].location;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ rangeOfString:random_NSString].length;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ rangeOfString:random_NSString options:1 << (0 + 0 + 3 + 0)].location;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ rangeOfString:random_NSString options:1 << (0 + 0 + 3 + 0)].length;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ rangeOfString:random_NSString options:1 << (0 + 6 + 10 + 0)].location;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ rangeOfString:random_NSString options:1 << (0 + 6 + 10 + 0)].length;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ rangeOfString:random_NSString options:1 << (0 + 0 + 3 + 0) range:NSMakeRange(0, NSString_.length)].location;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ rangeOfString:random_NSString options:1 << (0 + 0 + 3 + 0) range:NSMakeRange(0, NSString_.length)].length;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ rangeOfString:random_NSString options:1 << (0 + 6 + 10 + 0) range:NSMakeRange(0, NSString_.length)].location;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ rangeOfString:random_NSString options:1 << (0 + 6 + 10 + 0) range:NSMakeRange(0, NSString_.length)].length;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ rangeOfString:random_NSString options:1 << (0 + 0 + 3 + 0) range:NSMakeRange(0, NSString_.length) locale:nil].location;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ rangeOfString:random_NSString options:1 << (0 + 0 + 3 + 0) range:NSMakeRange(0, NSString_.length) locale:nil].length;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ rangeOfString:random_NSString options:1 << (0 + 6 + 10 + 0) range:NSMakeRange(0, NSString_.length) locale:nil].location;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
    {
        long var = [NSString_ rangeOfString:random_NSString options:1 << (0 + 6 + 10 + 0) range:NSMakeRange(0, NSString_.length) locale:nil].length;
        NSLog(@"%@:%ld", NSStringFromSelector(_cmd), var);
    }
}

+ (void)test_decimal_:(UIView *)UIView_ {
    {
        float var = random_negative(0.0 + 0 + 640 + 0.0);
        NSLog(@"%@:%f", NSStringFromSelector(_cmd), var);
    }
    {
        float var = CGRectGetMinX(UIView_.frame);
        NSLog(@"%@:%f", NSStringFromSelector(_cmd), var);
    }
    {
        float var = CGRectGetMidX(UIView_.frame);
        NSLog(@"%@:%f", NSStringFromSelector(_cmd), var);
    }
    {
        float var = CGRectGetMaxX(UIView_.frame);
        NSLog(@"%@:%f", NSStringFromSelector(_cmd), var);
    }
    {
        float var = CGRectGetMinY(UIView_.frame);
        NSLog(@"%@:%f", NSStringFromSelector(_cmd), var);
    }
    {
        float var = CGRectGetMidY(UIView_.frame);
        NSLog(@"%@:%f", NSStringFromSelector(_cmd), var);
    }
    {
        float var = CGRectGetMaxY(UIView_.frame);
        NSLog(@"%@:%f", NSStringFromSelector(_cmd), var);
    }
    {
        float var = CGRectGetWidth(UIView_.frame);
        NSLog(@"%@:%f", NSStringFromSelector(_cmd), var);
    }
    {
        float var = CGRectGetHeight(UIView_.frame);
        NSLog(@"%@:%f", NSStringFromSelector(_cmd), var);
    }

    {
        float var = CGRectGetMinX(UIView_.bounds);
        NSLog(@"%@:%f", NSStringFromSelector(_cmd), var);
    }
    {
        float var = CGRectGetMidX(UIView_.bounds);
        NSLog(@"%@:%f", NSStringFromSelector(_cmd), var);
    }
    {
        float var = CGRectGetMaxX(UIView_.bounds);
        NSLog(@"%@:%f", NSStringFromSelector(_cmd), var);
    }
    {
        float var = CGRectGetMinY(UIView_.bounds);
        NSLog(@"%@:%f", NSStringFromSelector(_cmd), var);
    }
    {
        float var = CGRectGetMidY(UIView_.bounds);
        NSLog(@"%@:%f", NSStringFromSelector(_cmd), var);
    }
    {
        float var = CGRectGetMaxY(UIView_.bounds);
        NSLog(@"%@:%f", NSStringFromSelector(_cmd), var);
    }
    {
        float var = CGRectGetWidth(UIView_.bounds);
        NSLog(@"%@:%f", NSStringFromSelector(_cmd), var);
    }
    {
        float var = CGRectGetHeight(UIView_.bounds);
        NSLog(@"%@:%f", NSStringFromSelector(_cmd), var);
    }
}

+ (void)test_NSRange_:(NSObject *)NSObject_ {
    {
        NSRange var = NSMakeRange(0, 0);
        NSLog(@"%@:%@", NSStringFromSelector(_cmd), NSStringFromRange(var));
    }
    {
        NSRange var = NSMakeRange(random_integer, random_integer);
        NSLog(@"%@:%@", NSStringFromSelector(_cmd), NSStringFromRange(var));
    }
    {
        NSRange var = NSMakeRange(random_integer, 0);
        NSLog(@"%@:%@", NSStringFromSelector(_cmd), NSStringFromRange(var));
    }
    {
        NSRange var = NSMakeRange(0, random_integer);
        NSLog(@"%@:%@", NSStringFromSelector(_cmd), NSStringFromRange(var));
    }
}

+ (void)test_UIEdgeInsets_:(NSObject *)NSObject_ {
    {
        UIEdgeInsets var = UIEdgeInsetsZero;
        NSLog(@"%@:%@", NSStringFromSelector(_cmd), NSStringFromUIEdgeInsets(var));
    }
    {
        UIEdgeInsets var = UIEdgeInsetsMake(0, 0, 0, 0);
        NSLog(@"%@:%@", NSStringFromSelector(_cmd), NSStringFromUIEdgeInsets(var));
    }
    {
        UIEdgeInsets var = UIEdgeInsetsMake(random_decimal, random_decimal, random_decimal, random_decimal);
        NSLog(@"%@:%@", NSStringFromSelector(_cmd), NSStringFromUIEdgeInsets(var));
    }
    {
        UIEdgeInsets var = UIEdgeInsetsMake(random_decimal, 0, 0, 0);
        NSLog(@"%@:%@", NSStringFromSelector(_cmd), NSStringFromUIEdgeInsets(var));
    }
    {
        UIEdgeInsets var = UIEdgeInsetsMake(0, random_decimal, 0, 0);
        NSLog(@"%@:%@", NSStringFromSelector(_cmd), NSStringFromUIEdgeInsets(var));
    }
    {
        UIEdgeInsets var = UIEdgeInsetsMake(0, 0, random_decimal, 0);
        NSLog(@"%@:%@", NSStringFromSelector(_cmd), NSStringFromUIEdgeInsets(var));
    }
    {
        UIEdgeInsets var = UIEdgeInsetsMake(0, 0, 0, random_decimal);
        NSLog(@"%@:%@", NSStringFromSelector(_cmd), NSStringFromUIEdgeInsets(var));
    }
}

+ (void)test_CGPoint_:(NSObject *)NSObject_ {
    {
        CGPoint var = CGPointZero;
        NSLog(@"%@", NSStringFromCGPoint(var));
    }
    {
        CGPoint var = CGPointMake(0, 0);
        NSLog(@"%@", NSStringFromCGPoint(var));
    }
    {
        CGPoint var = CGPointMake(random_decimal, 0);
        NSLog(@"%@", NSStringFromCGPoint(var));
    }
    {
        CGPoint var = CGPointMake(0, random_decimal);
        NSLog(@"%@", NSStringFromCGPoint(var));
    }
    {
        CGPoint var = CGPointMake(random_decimal, random_decimal);
        NSLog(@"%@", NSStringFromCGPoint(var));
    }
}

+ (void)test_CGSize_:(NSObject *)NSObject_ {
    {
        CGSize var = CGSizeZero;
        NSLog(@"%@", NSStringFromCGSize(var));
    }
    {
        CGSize var = CGSizeMake(0, 0);
        NSLog(@"%@", NSStringFromCGSize(var));
    }
    {
        CGSize var = CGSizeMake(random_decimal, 0);
        NSLog(@"%@", NSStringFromCGSize(var));
    }
    {
        CGSize var = CGSizeMake(0, random_decimal);
        NSLog(@"%@", NSStringFromCGSize(var));
    }
    {
        CGSize var = CGSizeMake(random_decimal, random_decimal);
        NSLog(@"%@", NSStringFromCGSize(var));
    }
}

+ (void)test_CGRect_:(NSObject *)NSObject_ {
    {
        CGRect var = CGRectZero;
        NSLog(@"%@", NSStringFromCGRect(var));
    }
    {
        CGRect var =  CGRectMake(0, 0, 0, 0);
        NSLog(@"%@", NSStringFromCGRect(var));
    }
    {
        CGRect var =  CGRectMake(random_decimal, random_decimal, random_decimal, random_decimal);
        NSLog(@"%@", NSStringFromCGRect(var));
    }
    {
        CGRect var =  CGRectMake(random_decimal, 0, 0, 0);
        NSLog(@"%@", NSStringFromCGRect(var));
    }
    {
        CGRect var =  CGRectMake(0, random_decimal, 0, 0);
        NSLog(@"%@", NSStringFromCGRect(var));
    }
    {
        CGRect var =  CGRectMake(0, 0, random_decimal, 0);
        NSLog(@"%@", NSStringFromCGRect(var));
    }
    {
        CGRect var =  CGRectMake(0, 0, 0, random_decimal);
        NSLog(@"%@", NSStringFromCGRect(var));
    }
}

+ (void)test_CGAffineTransform_:(NSObject *)NSObject_ {
    {
        CGAffineTransform var = CGAffineTransformIdentity;
        NSLog(@"%@", NSStringFromCGAffineTransform(var));
    }
    {
        CGAffineTransform var = CGAffineTransformMake(0, 0, 0, 0, 0, 0);
        NSLog(@"%@", NSStringFromCGAffineTransform(var));
    }
    {
        CGAffineTransform var = CGAffineTransformMake(random_decimal, random_decimal, random_decimal, random_decimal, random_decimal, random_decimal);
        NSLog(@"%@", NSStringFromCGAffineTransform(var));
    }
    {
        CGAffineTransform var = CGAffineTransformMake(random_decimal, random_decimal, random_decimal, random_decimal, 0, 0);
        NSLog(@"%@", NSStringFromCGAffineTransform(var));
    }
}

+ (void)test_NSString_:(NSString *)NSString_ UILabel_:(UILabel *)UILabel_ {
    {
        NSString *var = @"random_str";
        NSLog(@"%@", var);
    }
    {
        NSString *var = @"random_ascii";
        NSLog(@"%@", var);
    }
    {
        NSString *var = @"";
        NSLog(@"%@", var);
    }
    {
        NSString *var = @"null";
        NSLog(@"%@", var);
    }
    {
        NSString *var = @"nil";
        NSLog(@"%@", var);
    }
    {
        NSString *var = @"\t";
        NSLog(@"%@", var);
    }
    {
        NSString *var = @"%%";
        NSLog(@"%@", var);
    }
    {
        NSString *var = @"%d";
        NSLog(@"%@", var);
    }
    {
        NSString *var = @"%ld";
        NSLog(@"%@", var);
    }
    {
        NSString *var = @"%f";
        NSLog(@"%@", var);
    }
    {
        NSString *var = @"%u";
        NSLog(@"%@", var);
    }
    {
        NSString *var = NSString_.uppercaseString;
        NSLog(@"%@", var);
    }
    {
        NSString *var = NSString_.lowercaseString;
        NSLog(@"%@", var);
    }
    {
        NSString *var = NSString_.capitalizedString;
        NSLog(@"%@", var);
    }
    {
        NSString *var = UILabel_.text;
        NSLog(@"%@", var);
    }
    {
        NSString *var = UILabel_.attributedText.string;
        NSLog(@"%@", var);
    }
}

+ (void)test_NSNumber_:(NSObject *)NSObject_ {
    {
        NSNumber *var = [NSNumber numberWithChar:[random_NSString characterAtIndex:0]];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [NSNumber numberWithUnsignedChar:[random_NSString characterAtIndex:0]];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [NSNumber numberWithShort:random_integer];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [NSNumber numberWithUnsignedShort:random_integer];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [NSNumber numberWithInt:random_integer];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [NSNumber numberWithUnsignedInt:random_integer];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [NSNumber numberWithLong:random_integer];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [NSNumber numberWithUnsignedLong:random_integer];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [NSNumber numberWithLongLong:random_integer];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [NSNumber numberWithUnsignedLongLong:random_integer];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [NSNumber numberWithFloat:random_decimal];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [NSNumber numberWithDouble:random_decimal];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [NSNumber numberWithBool:true];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [NSNumber numberWithBool:false];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [NSNumber numberWithInteger:random_integer];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [NSNumber numberWithUnsignedInteger:random_integer];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [[NSNumber alloc] initWithChar:[random_NSString characterAtIndex:0]];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [[NSNumber alloc] initWithUnsignedChar:[random_NSString characterAtIndex:0]];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [[NSNumber alloc] initWithShort:random_integer];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [[NSNumber alloc] initWithUnsignedShort:random_integer];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [[NSNumber alloc] initWithInt:random_integer];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [[NSNumber alloc] initWithUnsignedInt:random_integer];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [[NSNumber alloc] initWithLong:random_integer];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [[NSNumber alloc] initWithUnsignedLong:random_integer];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [[NSNumber alloc] initWithLongLong:random_integer];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [[NSNumber alloc] initWithUnsignedLongLong:random_integer];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [[NSNumber alloc] initWithFloat:random_decimal];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [[NSNumber alloc] initWithDouble:random_decimal];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [[NSNumber alloc] initWithBool:random_bool];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [[NSNumber alloc] initWithInteger:random_integer];
        NSLog(@"%@", var);
    }
    {
        NSNumber *var = [[NSNumber alloc] initWithUnsignedInteger:random_integer];
        NSLog(@"%@", var);
    }
}

+ (void)test_NSNull_:(NSObject *)NSObject_ {
    {
        NSNull *var = [NSNull null];
        NSLog(@"%@", var);
    }
}

+ (void)test_UIFont_:(UIFont *)UIFont_ {
    {
        UIFont *var = [UIFont fontWithName:random_NSString size:(0 + 12 + 24 + 0)];
        NSLog(@"%@", var);
    }
    {
        UIFont *var = [UIFont systemFontOfSize:(0 + 12 + 24 + 0)];
        NSLog(@"%@", var);
    }
    {
        UIFont *var = [UIFont boldSystemFontOfSize:(0 + 12 + 24 + 0)];
        NSLog(@"%@", var);
    }
    {
        UIFont *var = [UIFont italicSystemFontOfSize:(0 + 12 + 24 + 0)];
        NSLog(@"%@", var);
    }
    {
        UIFont *var = [UIFont systemFontOfSize:(0 + 12 + 24 + 0) weight:(0.0 + 10 + 20 + 0.0)];
        NSLog(@"%@", var);
    }
    {
        UIFont *var = [UIFont monospacedDigitSystemFontOfSize:(0 + 12 + 24 + 0) weight:(0.0 + 10 + 20 + 0.0)];
        NSLog(@"%@", var);
    }
}

+ (void)test_UIColor_:(UIColor *)UIColor_ {
    {
        UIColor *var = [UIColor blackColor];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [UIColor darkGrayColor];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [UIColor lightGrayColor];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [UIColor grayColor];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [UIColor redColor];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [UIColor greenColor];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [UIColor blueColor];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [UIColor cyanColor];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [UIColor yellowColor];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [UIColor magentaColor];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [UIColor orangeColor];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [UIColor purpleColor];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [UIColor brownColor];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [UIColor clearColor];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [UIColor colorWithWhite:(0.0 + 0 + 1 + 0.0) alpha:(0.0 + 0 + 1 + 0.0)];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [UIColor colorWithHue:(0.0 + 0 + 1 + 0.0) saturation:(0.0 + 0 + 1 + 0.0) brightness:(0.0 + 0 + 1 + 0.0) alpha:(0.0 + 0 + 1 + 0.0)];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [UIColor colorWithRed:(0.0 + 0 + 1 + 0.0) green:(0.0 + 0 + 1 + 0.0) blue:(0.0 + 0 + 1 + 0.0) alpha:(0.0 + 0 + 1 + 0.0)];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [UIColor colorWithCGColor:[UIColor darkGrayColor].CGColor];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [UIColor colorWithPatternImage:random_UIImage];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [[UIColor alloc] initWithWhite:(0.0 + 0 + 1 + 0.0) alpha:(0.0 + 0 + 1 + 0.0)];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [[UIColor alloc] initWithHue:(0.0 + 0 + 1 + 0.0) saturation:(0.0 + 0 + 1 + 0.0) brightness:(0.0 + 0 + 1 + 0.0) alpha:(0.0 + 0 + 1 + 0.0)];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [[UIColor alloc] initWithRed:(0.0 + 0 + 1 + 0.0) green:(0.0 + 0 + 1 + 0.0) blue:(0.0 + 0 + 1 + 0.0) alpha:(0.0 + 0 + 1 + 0.0)];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [[UIColor alloc] initWithCGColor:[UIColor darkGrayColor].CGColor];
        NSLog(@"%@", var);
    }
    {
        UIColor *var = [[UIColor alloc] initWithPatternImage:random_UIImage];
        NSLog(@"%@", var);
    }
}

+ (void)test_NSData_:(NSData *)NSData_ {
    {
        NSData *var = [NSData data];
        NSLog(@"%@", var);
    }
    {
        NSData *var = [random_NSString dataUsingEncoding:NSUTF8StringEncoding];
        NSLog(@"%@", var);
    }
    {
        NSData *var = [random_NSString dataUsingEncoding:(0 + 0 + 12 + 0)];
        NSLog(@"%@", var);
    }
    {
        NSData *var = [NSData dataWithContentsOfFile:@"random_str.string" options:NSDataReadingMappedIfSafe error:NULL];
        NSLog(@"%@", var);
    }
    {
        NSData *var = [NSData dataWithContentsOfURL:[NSURL URLWithString:[@"random_str.string" stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]]] options:NSDataReadingMappedIfSafe error:NULL];
        NSLog(@"%@", var);
    }
    {
        NSData *var = [NSData dataWithContentsOfFile:@"random_str.string"];
        NSLog(@"%@", var);
    }
    {
        NSData *var = [NSData dataWithContentsOfURL:[NSURL URLWithString:[@"random_str.string" stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]]]];
        NSLog(@"%@", var);
    }
    {
        NSData *var = [[NSData alloc] initWithContentsOfFile:@"random_str.string" options:NSDataReadingMappedIfSafe error:NULL];
        NSLog(@"%@", var);
    }
    {
        NSData *var = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:[@"random_str.string" stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]]] options:NSDataReadingMappedIfSafe error:NULL];
        NSLog(@"%@", var);
    }
    {
        NSData *var = [[NSData alloc] initWithContentsOfFile:@"random_str.string"];
        NSLog(@"%@", var);
    }
    {
        NSData *var = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:[@"random_str.string" stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]]]];
        NSLog(@"%@", var);
    }
}

+ (void)test_UIImage_:(UIImage *)UIImage_ {
    {
        UIImage *var = [UIImage imageNamed:random_NSString];
        NSLog(@"%@", var);
    }
    {
        UIImage *var = [UIImage imageWithContentsOfFile:@"random_str.png"];
        NSLog(@"%@", var);
    }
    {
        UIImage *var = [UIImage imageWithData:random_NSData];
        NSLog(@"%@", var);
    }
    {
        UIImage *var = [UIImage imageWithData:random_NSData scale:(0.0 + 1 + 4 + 0.0)];
        NSLog(@"%@", var);
    }
    {
        UIImage *var = [UIImage animatedImageNamed:@"random_str.png" duration:(0.0 + 1 + 10 + 0.0)];
        NSLog(@"%@", var);
    }
    {
        UIImage *var = [UIImage animatedResizableImageNamed:@"random_str.png" capInsets:random_UIEdgeInsets duration:(0.0 + 1 + 10 + 0.0)];
        NSLog(@"%@", var);
    }
    {
        UIImage *var = [UIImage animatedResizableImageNamed:@"random_str.png" capInsets:random_UIEdgeInsets resizingMode:(UIImageResizingMode)0 duration:(0.0 + 1 + 10 + 0.0)];
        NSLog(@"%@", var);
    }
    {
        UIImage *var = [UIImage animatedResizableImageNamed:@"random_str.png" capInsets:random_UIEdgeInsets resizingMode:(UIImageResizingMode)0 duration:(0.0 + 1 + 10 + 0.0)];
        NSLog(@"%@", var);
    }
}

@end
