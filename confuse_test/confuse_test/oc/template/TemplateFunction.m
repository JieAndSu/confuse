//
//  TemplateFunction.m
//  confuse_test
//
//  Created by yjs on 2020/10/14.
//  Copyright © 2020 coding520. All rights reserved.
//

#import "TemplateFunction.h"

@implementation TemplateFunction

+ (void)test {
    [[[TemplateFunction alloc] init] test];
}

- (void)test {
    [self test_systemVersion:@"123"];
    [self test_secondInt:@"123"];
    [self test_bundleVersion:@"123"];
    [self test_getDiskSpace:@"123"];
    [self test_getTotalMemory:@"123"];
    [self test_getDocumentPath:@"123"];
    [self test_getLibraryPath:@"123"];
    [self test_getCachePath:@"123"];
    [self test_fileName:@"123"];
    [self test_randomString:@"123"];
    [self test_createTransId:@"123"];
    [self test_theScreenScale:@"123"];
    [self test_theRequestPath:@"123"];
    [self test_getRandomData:@"123"];
    [self test_jsonStringEncoded:@"123"];
    [self test_appBundleName:@"123"];
    [self test_appBundleID:@"123"];
    [self test_appVersion:@"123"];
    [self test_appBuildVersion:@"123"];
    [self test_systemVersionOnce:@"123"];
    [self test_isPadOrNot:@"123"];
    [self test_randomName:@"123"];
}

- (NSString *)test_systemVersion:(NSString *)var  {
    return [[UIDevice currentDevice] systemVersion];
}

- (NSString *)test_secondInt:(NSString *)var  {
    double secondTime = [[[NSDate alloc]init]timeIntervalSince1970];
    NSString *secondTimeStr = [NSString stringWithFormat:@"%f", secondTime];
    NSRange pointRange = [secondTimeStr rangeOfString:@"."];
    return [secondTimeStr substringToIndex:pointRange.location];
}

- (NSString *)test_bundleVersion:(NSString *)var  {
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
}

- (NSString *)test_getDiskSpace:(NSString *)var  {
    NSError *error = nil;
    NSDictionary *attrs = [[NSFileManager defaultManager] attributesOfFileSystemForPath:NSHomeDirectory() error:&error];
    if (error) return nil;
    int64_t space =  [[attrs objectForKey:NSFileSystemSize] longLongValue];
    if (space < 0) space = -1;
    return [NSString stringWithFormat:@"%lld", space];
}

- (NSString *)test_getTotalMemory:(NSString *)var  {
    int64_t totalMemory = [[NSProcessInfo processInfo] physicalMemory];
    return [NSString stringWithFormat:@"%lld", totalMemory];
}

- (NSString *)test_getDocumentPath:(NSString *)var  {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
}

- (NSString *)test_getLibraryPath:(NSString *)var  {
    return [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) firstObject];
}

- (NSString *)test_getCachePath:(NSString *)var  {
    return [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
}

- (NSString *)test_fileName:(NSString *)var  {
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    format.dateFormat = @"yyyyMMddhhmmss";
    return [format stringFromDate:[NSDate date]];
}

- (NSString *)test_randomString:(NSString *)var  {
    char random_var[8];
    for (int i = 0; i < 8; i++) {
        int j = random() % 93 + 33;
        char c = j;
        random_var[i] = c;
    }
    return [[NSString alloc]initWithBytes:&random_var length:8 encoding:NSASCIIStringEncoding];
}

- (NSString *)test_createTransId:(NSString *)var  {
    @synchronized(self)
    {
        unsigned long random_var = 0;
        NSNumber *number = [[NSUserDefaults standardUserDefaults] objectForKey:NSStringFromSelector(_cmd)];
        if (number) {
            random_var = [number unsignedLongValue] + 1;
        } else {
            random_var = [[[NSDate alloc] init] timeIntervalSince1970];
        }
        [[NSUserDefaults standardUserDefaults] setValue:@(random_var) forKey:NSStringFromSelector(_cmd)];
        [[NSUserDefaults standardUserDefaults] synchronize];
        return [NSString stringWithFormat:@"%lu", random_var];
    }
}

- (NSString *)test_theScreenScale:(NSString *)var  {
    static CGFloat screenScale = 0.0;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if ([NSThread isMainThread]) {
            screenScale = [[UIScreen mainScreen] scale];
        } else {
            dispatch_sync(dispatch_get_main_queue(), ^{
                screenScale = [[UIScreen mainScreen] scale];
            });
        }
    });
    return [NSString stringWithFormat:@"%f", screenScale];
}

- (NSString *)test_theRequestPath:(NSString *)var  {
    return [NSString stringWithFormat:@"%@", NSStringFromSelector(_cmd)];
}

- (NSString *)test_getRandomData:(NSString *)var  {
    return [NSString stringWithFormat:@"%ld", (long)arc4random_uniform(arc4random())];
}

- (NSString *)test_jsonStringEncoded:(NSString *)var  {
    if ([NSJSONSerialization isValidJSONObject:self]) {
        NSError *error;
        NSString *random_var = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:self options:0 error:&error] encoding:NSUTF8StringEncoding];
        return random_var;
    }
    return nil;
}

- (NSString *)test_appBundleName:(NSString *)var  {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleName"];
}

- (NSString *)test_appBundleID:(NSString *)var  {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleIdentifier"];
}

- (NSString *)test_appVersion:(NSString *)var  {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}

- (NSString *)test_appBuildVersion:(NSString *)var  {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
}

- (NSString *)test_systemVersionOnce:(NSString *)var  {
    static double version;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        version = [UIDevice currentDevice].systemVersion.doubleValue;
    });
    return [NSString stringWithFormat:@"%f", version];
}

- (NSString *)test_isPadOrNot:(NSString *)var  {
    static dispatch_once_t one;
    static BOOL pad;
    dispatch_once(&one, ^{
        pad = UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad;
    });
    return [NSString stringWithFormat:@"%d", pad];
}

- (NSString *)test_randomName:(NSString *)var  {
    return NSStringFromClass([self class]);
}

@end
