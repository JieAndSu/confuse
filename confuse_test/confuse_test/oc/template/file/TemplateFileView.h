#import <UIKit/UIKit.h>

#import "TemplateFileModel.h"
#import "TemplateLastClassView.h"

//XXX_DELETE_BEGIN
#import "Template.h"
#define view_space    (0 + 8 + 12 + 0)
#define view_width    (0 + 200 + 320 + 0)
#define view_height   (0 + 60 + 400 + 0)
#define cell_length   (0 + 40 + 50 + 0)
#define cell_count    (0 + 3 + 5 + 0)
#define cell_class    UILabel
#define view_protocol UITextFieldDelegate
#define view_control  UITextField
//XXX_DELETE_END

NS_ASSUME_NONNULL_BEGIN

@interface TemplateFileView : cell_class<view_protocol>

@property (nonatomic, strong) UIImageView *public_image;
@property (nonatomic, strong) UIButton *public_button;
@property (nonatomic, strong) UILabel *public_label;
@property (nonatomic, strong) view_control *random_control;

- (void)setFileModel:(TemplateFileModel *)model;
- (void)setPublicParent:(UIView *)view;
- (void)setPublicSender;

@end

NS_ASSUME_NONNULL_END
