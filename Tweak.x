#import <UIKit/UIKit.h>

@interface YTPivotBarItemView: UIView
@property (strong, nonatomic) UIButton *navigationButton;
@end

%hook YTPivotBarView
- (void)setItemView2:(YTPivotBarItemView *)argument {
    argument.navigationButton.hidden = YES;
}

- (YTPivotBarItemView *)itemView2 {
    YTPivotBarItemView *orig = %orig;
    orig.navigationButton.hidden = YES;
    
    return nil;
}
%end
