#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TemplateFileModel : NSObject<NSCoding>

@property (nonatomic, strong) NSString *model_image;
@property (nonatomic, strong) NSString *model_label;
@property (nonatomic, strong) NSString *model_button;
@property (nonatomic, strong) NSString *model_color;
@property (nullable, strong) NSData *model_data;
@property (nonatomic, assign) NSInteger model_int;
@property (nonatomic, assign) double model_double;
@property (nonatomic, assign) BOOL model_bool;

+ (instancetype)setModelWithDic:(NSDictionary *)dic;
- (void)setModelReset;

@end

NS_ASSUME_NONNULL_END
