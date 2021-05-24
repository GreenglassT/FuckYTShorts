#line 1 "Tweak.x"
#import <UIKit/UIKit.h>

@interface YTPivotBarItemView: UIView
@property (strong, nonatomic) UIButton *navigationButton;
@end


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class YTPivotBarView; 
static void (*_logos_orig$_ungrouped$YTPivotBarView$setItemView2$)(_LOGOS_SELF_TYPE_NORMAL YTPivotBarView* _LOGOS_SELF_CONST, SEL, YTPivotBarItemView *); static void _logos_method$_ungrouped$YTPivotBarView$setItemView2$(_LOGOS_SELF_TYPE_NORMAL YTPivotBarView* _LOGOS_SELF_CONST, SEL, YTPivotBarItemView *); static YTPivotBarItemView * (*_logos_orig$_ungrouped$YTPivotBarView$itemView2)(_LOGOS_SELF_TYPE_NORMAL YTPivotBarView* _LOGOS_SELF_CONST, SEL); static YTPivotBarItemView * _logos_method$_ungrouped$YTPivotBarView$itemView2(_LOGOS_SELF_TYPE_NORMAL YTPivotBarView* _LOGOS_SELF_CONST, SEL); 

#line 7 "Tweak.x"

static void _logos_method$_ungrouped$YTPivotBarView$setItemView2$(_LOGOS_SELF_TYPE_NORMAL YTPivotBarView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, YTPivotBarItemView * argument) {
    argument.navigationButton.hidden = YES;
}

static YTPivotBarItemView * _logos_method$_ungrouped$YTPivotBarView$itemView2(_LOGOS_SELF_TYPE_NORMAL YTPivotBarView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    YTPivotBarItemView *orig = _logos_orig$_ungrouped$YTPivotBarView$itemView2(self, _cmd);
    orig.navigationButton.hidden = YES;
    
    return nil;
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$YTPivotBarView = objc_getClass("YTPivotBarView"); { MSHookMessageEx(_logos_class$_ungrouped$YTPivotBarView, @selector(setItemView2:), (IMP)&_logos_method$_ungrouped$YTPivotBarView$setItemView2$, (IMP*)&_logos_orig$_ungrouped$YTPivotBarView$setItemView2$);}{ MSHookMessageEx(_logos_class$_ungrouped$YTPivotBarView, @selector(itemView2), (IMP)&_logos_method$_ungrouped$YTPivotBarView$itemView2, (IMP*)&_logos_orig$_ungrouped$YTPivotBarView$itemView2);}} }
#line 19 "Tweak.x"
