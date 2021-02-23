//
//  TemplateCodeModify.m
//  confuse_test
//
//  Created by yjs on 2020/10/8.
//  Copyright © 2020 coding520. All rights reserved.
//
#import "TemplateCodeModify.h"
#import "TestFunctionOtherTemplate.h"

@implementation TemplateCodeModify
+ (void)test {
    [self test_UInt8_:0 int_:0 short_:0 Byte_:0 NSInteger_:0 float_:0 double_:0 CGFloat_:0 NSTimeInterval_:0];
    [self test_BOOL_:0 Boolean_:0];
    [self test_NSString_:nil];
    [self test_NSMutableString_:nil];
    [self test_NSArray_:nil];
    [self test_NSMutableArray_:nil];
    [self test_NSDictionary_:nil];
    [self test_NSMutableDictionary_:nil];
    [self test_UIView_:nil];
    [self test_UILabel:nil];
    [self test_UIImage_:nil];
    [self test_UIImageView_:nil];
    [self test_UIButton_:nil];
    [self test_UITextField_:nil];
    [self test_UITableView_:nil];
    [self test_NSObject_:nil];
}

+ (void)test_UInt8_:(UInt8)UInt8_ int_:(int)int_ short_:(short)short_ Byte_:(Byte)Byte_ NSInteger_:(NSInteger)NSInteger_ float_:(float)float_ double_:(double)double_ CGFloat_:(CGFloat)CGFloat_ NSTimeInterval_:(NSTimeInterval)NSTimeInterval_ {
    UInt8 var = 0;
    {
        var = random_integer;
    }
    {
        var += 1;
    }
    {
        var -= 1;
    }
    {
        var++;
    }
    {
        var--;
    }
    {
        --var;
    }
    {
        ++var;
    }
    {
        var = roundf(var);
    }
    {
        var = ceil(var);
    }
    {
        var = floor(var);
    }
}

+ (void)test_BOOL_:(BOOL)BOOL_ Boolean_:(Boolean)Boolean_ {
    BOOL var = YES;
    {
        var = NO;
    }
    {
        var = YES;
    }
    {
        var = !var;
    }
}

+ (void)test_NSString_:(NSString *)NSString_ {
    NSString *var = @"123";
    {
        var = random_NSString;
    }
    {
        var = [var stringByReplacingOccurrencesOfString:random_NSString withString:random_NSString];
    }
    var = @"123";
    {
        var = [var stringByReplacingOccurrencesOfString:random_NSString withString:@""];
    }
    var = @"123";
    {
        var = [var stringByReplacingOccurrencesOfString:@"  " withString:@" "];
    }
    {
        var = [var stringByReplacingOccurrencesOfString:@" " withString:@""];
    }
    {
        NSMutableString *random_var = [NSMutableString string];
        [random_var appendString:@"\n"];
        [random_var appendString:var];
        var = random_var;
    }
    {
        NSMutableString *random_var = [NSMutableString string];
        [random_var appendString:var];
        [random_var deleteCharactersInRange:random_NSRange];
        var = random_var;
    }
    {
        NSMutableString *random_var = [NSMutableString string];
        [random_var appendString:var];
        [random_var insertString:var atIndex:random_integer];
        var = random_var;
    }
    {
        NSMutableString *random_var = [NSMutableString string];
        [random_var appendString:var];
        [random_var replaceCharactersInRange:random_NSRange withString:random_NSString];
        var = random_var;
    }
    {
        var = [var substringToIndex:random_integer];
    }
    var = @"123";
    {
        var = [var substringFromIndex:random_integer];
    }
    var = @"123";
    {
        var = [var substringWithRange:random_NSRange];
    }
}

+ (void)test_NSMutableString_:(NSMutableString *)NSMutableString_ {
    NSMutableString *var = [NSMutableString stringWithString:@"123"];
    {
        [var replaceCharactersInRange:NSMakeRange(random_integer, random_integer) withString:random_NSString];
    }
    {
        [var replaceCharactersInRange:random_NSRange withString:@""];
    }
    {
        [var replaceCharactersInRange:random_NSRange withString:random_NSString];
    }
    {
        [var insertString:random_NSString atIndex:random_integer];
    }
    {
        [var deleteCharactersInRange:random_NSRange];
    }
    {
        [var appendString:random_NSString];
    }
    {
        [var appendFormat:@"%@", random_NSString];
    }
    {
        [var setString:@""];
    }
    {
        [var setString:random_NSString];
    }
    {
        [var replaceOccurrencesOfString:random_NSString withString:@"" options:1 << (0 + 0 + 3 + 0) range:random_NSRange];
    }
    {
        [var replaceOccurrencesOfString:random_NSString withString:@"" options:1 << (0 + 6 + 10 + 0) range:random_NSRange];
    }
    {
        if (!var) {
            var = [[NSMutableString alloc] initWithCapacity:random_integer];
        }
    }
    {
        if (!var) {
            var = [NSMutableString stringWithCapacity:random_integer];
        }
    }
}

+ (void)test_NSArray_:(NSArray *)NSArray_ {
    NSArray *var = @[@"1", @"2", @"3"];
    {
        var = [var arrayByAddingObject:random_Class ? : [NSNull null]];
    }
    {
        var = [var arrayByAddingObjectsFromArray:@[random_Class ? : [NSNull null]]];
    }
    {
        var = @[var.firstObject];
    }
    {
        var = @[var.lastObject];
    }
    {
        if ([var indexOfObject:random_Class ? : [NSNull null]]) {
            var = nil;
        }
    }
    {
        var = [var subarrayWithRange:random_NSRange];
    }
    {
        NSMutableArray *random_var = [NSMutableArray arrayWithArray:var];
        [random_var addObject:self];
        for (id obj in var) {
            if (!obj) {
                [random_var removeObject:obj];
            }
        }
        var = random_var;
    }
}

+ (void)test_NSMutableArray_:(NSMutableArray *)NSMutableArray_ {
    NSMutableArray *var = [NSMutableArray array];
    {
        [var addObject:random_Class ? : [NSNull null]];
    }
    {
        [var addObjectsFromArray:@[random_Class ? : [NSNull null]]];
    }
    {
        NSMutableArray *random_var = [NSMutableArray array];
        [random_var insertObject:var atIndex:0];
        var = random_var;
    }
    {
        if ([var indexOfObject:random_Class ? : [NSNull null]]) {
            var = nil;
        }
    }
    {
        [var removeObject:random_Class ? : [NSNull null] inRange:random_NSRange];
    }
    {
        NSMutableArray *random_var = [NSMutableArray arrayWithArray:var];
        [random_var addObject:self];
        for (id obj in var) {
            if (!obj) {
                [random_var removeObject:obj];
            }
        }
        var = random_var;
    }
}

+ (void)test_NSDictionary_:(NSDictionary *)NSDictionary_ {
    NSDictionary *var = @{};
    {
        var = @{};
    }
    {
        var = [NSDictionary dictionary];
    }
    {
        var = [NSDictionary dictionaryWithObject:random_Class ? : [NSNull null] forKey:random_NSString];
    }
    {
        var = [NSDictionary dictionaryWithObjects:@[random_Class ? : [NSNull null]] forKeys:@[random_NSString]];
    }
    {
        var = [NSDictionary dictionaryWithObjectsAndKeys:random_Class ? : [NSNull null], random_NSString, nil];
    }
    {
        NSMutableDictionary *random_var = [NSMutableDictionary dictionary];
        var = [[NSDictionary alloc] initWithDictionary:random_var];
    }
    {
        var = [[NSDictionary alloc] initWithObjectsAndKeys:random_Class ? : [NSNull null], random_NSString, nil];
    }
    {
        NSMutableDictionary *random_var = [NSMutableDictionary dictionaryWithContentsOfFile:@"random_str.string"];
        random_var[random_NSString] = nil;
        var = random_var;
    }
    {
        NSMutableDictionary *random_var = [NSMutableDictionary dictionaryWithContentsOfFile:@"random_str.string"];
        for (NSString *k in var.allKeys) {
            if ([k isEqualToString:random_NSString]) {
                [random_var removeObjectForKey:k];
            }
        }
        var = random_var;
    }
}

+ (void)test_NSMutableDictionary_:(NSMutableDictionary *)NSMutableDictionary_ {
    NSMutableDictionary *var = [NSMutableDictionary dictionary];
    {
        var[random_NSString] = random_Class ? : [NSNull null];
    }
    {
        [var removeObjectForKey:random_NSString];
    }
    {
        [var setObject:random_Class ? : [NSNull null] forKey:random_NSString];
    }
    {
        if (random_false) {
            var = [[NSMutableDictionary alloc] init];
        }
    }
    {
        if (random_false) {
            var = [[NSMutableDictionary alloc] initWithCapacity:random_integer];
        }
    }
    {
        [var addEntriesFromDictionary:@{ random_NSString: random_Class ? : [NSNull null] }];
    }
    {
        [var removeAllObjects];
    }
    {
        [var removeObjectsForKeys:@[random_NSString, random_NSString]];
    }
    {
        [var setDictionary:[NSMutableDictionary dictionaryWithContentsOfFile:@"random_str.string"]];
    }
    {
        var = [NSMutableDictionary dictionaryWithCapacity:random_integer];
    }
    {
        NSURL *random_var = [NSURL URLWithString:[@"random_str.string" stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]]];
        var = [NSMutableDictionary dictionaryWithContentsOfURL:random_var];
    }
    {
        NSMutableDictionary *random_var = [[NSMutableDictionary alloc] initWithContentsOfFile:@"random_str.string"];
        var = random_var;
    }
    {
        NSURL *random_var = [NSURL URLWithString:[@"random_str.string" stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]]];
        var = [[NSMutableDictionary alloc] initWithContentsOfURL:random_var];
    }
}

+ (void)test_UIView_:(UIView *)UIView_ {
    UIView *var = [[UIView alloc] initWithFrame:CGRectZero];
    {
        UIView *random_var = [[UIView alloc] initWithFrame:random_CGRect];
        random_var.backgroundColor = random_UIColor;
        random_var.alpha = (0.0 + 0.1 + 1 + 0.0);
        [var addSubview:random_var];
    }
    {
        var.userInteractionEnabled = YES;
    }
    {
        var.userInteractionEnabled = NO;
    }
    {
        var.tag = random_integer;
    }
    {
        CALayer *random_var = var.layer;
        random_var.position = random_CGPoint;
    }
    {
        var.frame = random_CGRect;
    }
    {
        var.bounds = random_CGRect;
    }
    {
        var.center = random_CGPoint;
    }
    {
        var.transform = random_CGAffineTransform;
    }
    {
        var.contentScaleFactor = (0.0 + 0 + 100 + 0.0);
    }
    {
        var.multipleTouchEnabled = random_bool;
    }
    {
        var.exclusiveTouch = random_bool;
    }
    {
        [var convertPoint:random_CGPoint toView:[var superview]];
    }
    {
        [var convertPoint:random_CGPoint fromView:[var superview]];
    }
    {
        [var convertRect:random_CGRect toView:[var superview]];
    }
    {
        [var convertRect:random_CGRect fromView:[var superview]];
    }
    {
        var.autoresizesSubviews = random_bool;
    }
    {
        var.autoresizingMask = 0;
    }
    {
        var.autoresizingMask = 1 << (0 + 0 + 5 + 0);
    }
    {
        [var sizeThatFits:random_CGSize];
    }
    {
        [var sizeToFit];
    }
}

+ (void)test_UILabel:(UILabel *)UILabel_ {
    UILabel *var = [[UILabel alloc] initWithFrame:CGRectZero];
    var.text = @"123";
    {
        NSMutableString *random_var = [NSMutableString stringWithString:var.text];
        [random_var appendString:random_NSString];
        var.text = random_var;
    }
    {
        var.font = random_UIFont;
    }
    {
        var.textColor = random_UIColor;
    }
    {
        var.shadowColor = random_UIColor;
    }
    {
        var.shadowOffset = random_CGSize;
    }
    {
        var.textAlignment = (0 + 0 + 4 + 0);
    }
    {
        var.lineBreakMode = (0 + 0 + 5 + 0);
    }
    {
        NSAttributedString *random_var = [[NSAttributedString alloc] initWithString:random_NSString];
        var.attributedText = random_var;
    }
    {
        var.highlightedTextColor = random_UIColor;
    }
}

+ (void)test_UIImage_:(UIImage *)UIImage_ {
    UIImage *var = [UIImage imageNamed:@""];
    {
        [var drawAtPoint:random_CGPoint];
    }
    {
        [var drawAtPoint:random_CGPoint blendMode:(0 + 0 + 26 + 0) alpha:(0.0 + 0 + 1 + 0.0)];
    }
    {
        [var drawInRect:random_CGRect];
    }
    {
        [var drawInRect:random_CGRect blendMode:(0 + 0 + 26 + 0) alpha:(0.0 + 0 + 1 + 0.0)];
    }
    {
        [var drawAsPatternInRect:random_CGRect];
    }
    {
        var = [var resizableImageWithCapInsets:random_UIEdgeInsets];
    }
    {
        var = [var resizableImageWithCapInsets:random_UIEdgeInsets resizingMode:(UIImageResizingMode)(0 + 0 + 1 + 0)];
    }
    {
        var =  [var imageWithAlignmentRectInsets:random_UIEdgeInsets];
    }
    {
        var = [var imageWithRenderingMode:(0 + 0 + 2 + 0)];
    }
    {
        var = [var imageFlippedForRightToLeftLayoutDirection];
    }
}

+ (void)test_UIImageView_:(UIImageView *)UIImageView_ {
    UIImageView *var = [[UIImageView alloc] initWithFrame:CGRectZero];
    {
        var.image = random_UIImage;
    }
    {
        var.highlightedImage = random_UIImage;
    }
    {
        if (@available(iOS 13.0, *)) {
            UIImageSymbolConfiguration *cfg = [UIImageSymbolConfiguration configurationWithPointSize:(0.0 + 0.1 + 1 + 0.0)];
            var.preferredSymbolConfiguration = cfg;
        } else {
            // Fallback on earlier versions
        }
    }
    {
        var.userInteractionEnabled = random_bool;
    }
    {
        var.highlighted = random_bool;
    }
    {
        NSMutableArray *random_var = [NSMutableArray array];
        for (int i = 0; i < random_integer; i++) {
            UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"random_str_%lu", (unsigned long)i]];
            if (image) {
                [random_var addObject:image];
            }
        }
        var.animationImages = random_var;
    }
    {
        NSMutableArray *random_var = [NSMutableArray array];
        for (int i = 0; i < random_integer; i++) {
            UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"random_str_%lu", (unsigned long)i]];
            if (image) {
                [random_var addObject:image];
            }
        }
        var.highlightedAnimationImages = random_var;
    }
    {
        var.animationDuration = random_integer;
    }
    {
        var.animationRepeatCount = random_integer;
    }
    {
        var.tintColor = random_UIColor;
    }
    {
        [var startAnimating];
    }
    {
        [var stopAnimating];
    }
}

+ (void)test_UIButton_:(UIButton *)UIButton_ {
    UIButton *var = [[UIButton alloc] initWithFrame:CGRectZero];
    {
        if (!var) {
            var = [UIButton buttonWithType:(0 + 0 + 5 + 0)];
        }
    }
    {
        if (!var) {
            if (@available(iOS 13.0, *)) {
                var = [UIButton buttonWithType:UIButtonTypeClose];
            } else {
                // Fallback on earlier versions
            }
        }
    }
    {
        if (!var) {
            var = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        }
    }
    {
        var.contentEdgeInsets = random_UIEdgeInsets;
    }
    {
        var.titleEdgeInsets = random_UIEdgeInsets;
    }
    {
        var.reversesTitleShadowWhenHighlighted = random_bool;
    }
    {
        var.imageEdgeInsets = random_UIEdgeInsets;
    }
    {
        var.adjustsImageWhenHighlighted = random_bool;
    }
    {
        var.adjustsImageWhenDisabled = random_bool;
    }
    {
        var.tintColor = random_UIColor;
    }
    {
        NSLog(@"buttonType:%ld", (long)var.buttonType);
    }
    {
        if (@available(iOS 13.4, *)) {
            var.pointerInteractionEnabled = YES;
        } else {
            // Fallback on earlier versions
        }
    }
    {
        if (@available(iOS 13.4, *)) {
            var.pointerInteractionEnabled = NO;
        } else {
            // Fallback on earlier versions
        }
    }
    {
        if (@available(iOS 13.4, *)) {
            var.pointerStyleProvider = nil;
        } else {
            // Fallback on earlier versions
        }
    }
    {
        [var setTitle:random_NSString forState:UIControlStateNormal];
    }
    {
        [var setTitle:random_NSString forState:1 << (0 + 0 + 3 + 0)];
    }
    {
        [var setTitle:random_NSString forState:UIControlStateApplication];
    }
    {
        [var setTitle:random_NSString forState:UIControlStateReserved];
    }
}

+ (void)test_UITextField_:(UITextField *)UITextField_ {
    UITextField *var = [[UITextField alloc] init];
    {
        var.text = random_NSString;
    }
    {
        NSAttributedString *random_var = [[NSAttributedString alloc] initWithString:var.text];
        var.attributedText = random_var;
    }
    {
        NSAttributedString *random_var = [[NSAttributedString alloc] initWithString:random_NSString];
        var.attributedText = random_var;
    }
    {
        var.textColor = random_UIColor;
    }
    {
        var.font = random_UIFont;
    }
    {
        var.textAlignment = (0 + 0 + 4 + 0);
    }
    {
        var.borderStyle = (0 + 0 + 3 + 0);
    }
    {
        NSDictionary *random_var = @{
            NSFontAttributeName: random_UIFont,
            NSForegroundColorAttributeName: random_UIColor,
            NSKernAttributeName: random_NSNumber,
        };
        var.defaultTextAttributes = random_var;
    }
    {
        var.placeholder = random_NSString;
    }
    {
        var.placeholder = var.text;
    }
}

+ (void)test_UITableView_:(UITableView *)UITableView_ {
    UITableView *var = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    {
        if ([self respondsToSelector:@selector(tableView:numberOfRowsInSection:)]) {
            var.dataSource = (id<UITableViewDataSource>)self;
        }
    }
    {
        if ([self respondsToSelector:@selector(tableView:didSelectRowAtIndexPath:)]) {
            var.delegate = (id<UITableViewDelegate>)self;
        }
    }
    {
        var.rowHeight = random_decimal;
    }
    {
        var.sectionHeaderHeight = random_decimal;
    }
    {
        var.sectionFooterHeight = random_decimal;
    }
    {
        var.estimatedRowHeight = random_decimal;
    }
    {
        var.estimatedSectionHeaderHeight = random_decimal;
    }
    {
        var.estimatedSectionFooterHeight = random_decimal;
    }
    {
        var.separatorInset = random_UIEdgeInsets;
    }
    {
        if (@available(iOS 11.0, *)) {
            var.separatorInsetReference = UITableViewSeparatorInsetFromCellEdges;
        } else {
            // Fallback on earlier versions
        }
    }
    {
        if (@available(iOS 11.0, *)) {
            var.separatorInsetReference = UITableViewSeparatorInsetFromAutomaticInsets;
        } else {
            // Fallback on earlier versions
        }
    }
    {
        UIView *random_var = [[UIView alloc] initWithFrame:random_CGRect];
        random_var.backgroundColor = random_UIColor;
        random_var.alpha = (0.0 + 0.1 + 1 + 0.0);
        var.backgroundView = random_var;
    }
    {
        NSInteger random_var = [var numberOfSections];
        NSLog(@"row:%ld", (long)random_var);
        var.rowHeight = random_var * (0.0 + 1 + 100 + 0.0);
    }
    {
        NSInteger random_var = [var numberOfRowsInSection:random_integer];
        NSLog(@"row:%ld", (long)random_var);
        var.rowHeight = random_var * (0.0 + 1 + 100 + 0.0);
    }
    {
        NSLog(@"yjsrectForSection:%@", NSStringFromCGRect([var rectForSection:random_integer]));
    }
    {
        NSLog(@"rectForHeaderInSection:%@", NSStringFromCGRect([var rectForHeaderInSection:random_integer]));
    }
    {
        NSLog(@"rectForFooterInSection:%@", NSStringFromCGRect([var rectForFooterInSection:random_integer]));
    }
    {
        NSIndexPath *random_var = [NSIndexPath indexPathForRow:random_integer inSection:random_integer];
        NSLog(@"rectForRowAtIndexPath:%@", NSStringFromCGRect([var rectForRowAtIndexPath:random_var]));
    }
    {
        NSLog(@"indexPathForRowAtPoint:%@", [var indexPathForRowAtPoint:CGPointMake((0.0 + 1 + 100 + 0.0), (0.0 + 1 + 100 + 0.0))]);
    }
    {
        UITableViewCell *random_var = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:random_NSString];
        NSLog(@"indexPathForCell:%@", [var indexPathForCell:random_var]);
    }
    {
        NSLog(@"indexPathsForRowsInRect:%@", [var indexPathsForRowsInRect:CGRectMake(0, 0, var.frame.size.width, (0.0 + 1 + 100 + 0.0))]);
    }
    {
        NSIndexPath *random_var = [NSIndexPath indexPathForRow:random_integer inSection:random_integer];
        NSLog(@"indexPathsForRowsInRect:%@", [var cellForRowAtIndexPath:random_var]);
    }
    {
        NSLog(@"visibleCells:%@", [var visibleCells]);
    }
    {
        NSLog(@"indexPathsForVisibleRows:%@", [var indexPathsForVisibleRows]);
    }
    {
        var.rowHeight = random_integer;
    }
    {
        var.contentSize = random_CGSize;
    }
    {
        var.contentOffset = random_CGPoint;
    }
    {
        var.separatorColor = random_UIColor;
    }
}

+ (void)test_NSObject_:(NSObject *)NSObject_ {
    NSObject *var = [[NSObject alloc] init];
    {
        if ([var isEqual:self]) {
            NSLog(@"%@", var.description);
        }
    }
    {
        if (var == self) {
            NSLog(@"%@", var.description);
        }
    }
    {
        if ([var isEqual:self.superclass]) {
            NSLog(@"%@", var.description);
        }
    }
    {
        if (var == self.superclass) {
            NSLog(@"%@", var.description);
        }
    }
    {
        if ([var isEqual:NSStringFromClass([self class])]) {
            NSLog(@"%@", var.description);
        }
    }
    {
        if ([var isEqual:self]) {
            NSLog(@"%@", var.debugDescription);
        }
    }
    {
        if (var == [self class]) {
            NSLog(@"%@", var.debugDescription);
        }
    }
    {
        if (var.hash == (0 + 1000 + 100000 + 0)) {
            NSLog(@"%@", var);
        }
    }
    {
        if (var.hash == self.hash) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![var isEqual:self]) {
            NSLog(@"%@", var.description);
        }
    }
    {
        if (var != self) {
            NSLog(@"%@", var.description);
        }
    }
    {
        if (![var isEqual:self.superclass]) {
            NSLog(@"%@", var.description);
        }
    }
    {
        if (var != self.superclass) {
            NSLog(@"%@", var.description);
        }
    }
    {
        if (![var isEqual:NSStringFromClass([self class])]) {
            NSLog(@"%@", var.description);
        }
    }
    {
        if (![var isEqual:self]) {
            NSLog(@"%@", var.debugDescription);
        }
    }
    {
        if (var != [self class]) {
            NSLog(@"%@", var.debugDescription);
        }
    }
    {
        if (var.hash != (0 + 1000 + 100000 + 0)) {
            NSLog(@"%@", var);
        }
    }
    {
        if (var.hash != self.hash) {
            NSLog(@"%@", var);
        }
    }
    {
        if (var.isProxy) {
            NSLog(@"%@", var);
        }
    }
    {
        if (!var.isProxy) {
            NSLog(@"%@", var);
        }
    }
    {
        if ([var isKindOfClass:[self class]]) {
            NSLog(@"%@", var);
        }
    }
    {
        if ([var isKindOfClass:self.superclass]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![var isKindOfClass:[self class]]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![var isKindOfClass:self.superclass]) {
            NSLog(@"%@", var);
        }
    }
    {
        if ([var isMemberOfClass:[self class]]) {
            NSLog(@"%@", var);
        }
    }
    {
        if ([var isMemberOfClass:self.superclass]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![var isMemberOfClass:[self class]]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![var isMemberOfClass:self.superclass]) {
            NSLog(@"%@", var);
        }
    }
    {
        if ([var conformsToProtocol:@protocol(random_protocol)]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![var conformsToProtocol:@protocol(random_protocol)]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![var respondsToSelector:@selector(random_selector)]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![var respondsToSelector:@selector(random_selector)]) {
            NSLog(@"%@", var);
        }
    }
    {
        if ([[var class] instancesRespondToSelector:@selector(random_selector)]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![[var class] instancesRespondToSelector:@selector(random_selector)]) {
            NSLog(@"%@", var);
        }
    }
    {
        if ([var.superclass instancesRespondToSelector:@selector(random_selector)]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![var.superclass instancesRespondToSelector:@selector(random_selector)]) {
            NSLog(@"%@", var);
        }
    }
    {
        if ([[var class] conformsToProtocol:@protocol(random_protocol)]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![var.superclass conformsToProtocol:@protocol(random_protocol)]) {
            NSLog(@"%@", var);
        }
    }
    {
        if ([[var class] conformsToProtocol:@protocol(random_protocol)]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![var.superclass conformsToProtocol:@protocol(random_protocol)]) {
            NSLog(@"%@", var);
        }
    }
    {
        if ([[var class] isSubclassOfClass:[self class]]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![[var class] isSubclassOfClass:[self class]]) {
            NSLog(@"%@", var);
        }
    }
    {
        if ([[var class] isSubclassOfClass:self.superclass]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![[var class] isSubclassOfClass:self.superclass]) {
            NSLog(@"%@", var);
        }
    }
    {
        if ([var.superclass isSubclassOfClass:[self class]]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![var.superclass isSubclassOfClass:[self class]]) {
            NSLog(@"%@", var);
        }
    }
    {
        if ([var.superclass isSubclassOfClass:self.superclass]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![var.superclass isSubclassOfClass:self.superclass]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![var isMemberOfClass:self.superclass]) {
            NSLog(@"%@", var);
        }
    }
    {
        if ([[var class] resolveClassMethod:@selector(random_selector)]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![[var class] resolveClassMethod:@selector(random_selector)]) {
            NSLog(@"%@", var);
        }
    }
    {
        if ([var.superclass resolveClassMethod:@selector(random_selector)]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![var.superclass resolveClassMethod:@selector(random_selector)]) {
            NSLog(@"%@", var);
        }
    }
    {
        if ([[var class] resolveInstanceMethod:@selector(random_selector)]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![[var class] resolveInstanceMethod:@selector(random_selector)]) {
            NSLog(@"%@", var);
        }
    }
    {
        if ([var.superclass resolveInstanceMethod:@selector(random_selector)]) {
            NSLog(@"%@", var);
        }
    }
    {
        if (![var.superclass resolveInstanceMethod:@selector(random_selector)]) {
            NSLog(@"%@", var);
        }
    }
}

@end
