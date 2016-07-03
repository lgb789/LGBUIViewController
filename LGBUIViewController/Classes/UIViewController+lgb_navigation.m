
#import "UIViewController+lgb_navigation.h"
#import <objc/runtime.h>

@implementation UIViewController (lgb_navigation)

- (void)lgb_setNavigationTitle:(NSString*)title color:(UIColor*)color font:(UIFont*)font
{
    [self.navigationController.navigationBar
    setTitleTextAttributes:@{ NSForegroundColorAttributeName: color, NSFontAttributeName: font }];

    self.title = title;
}

- (void)lgb_setNavigationBackButtonWithImage:(UIImage*)image
                            highlightedImage:(UIImage*)highlightedImage
                                      action:(BackButtonAction)action
{
    self.navigationItem.hidesBackButton = YES;

    UIButton* bt = [UIButton buttonWithType:UIButtonTypeCustom];
    bt.frame     = CGRectMake (0, 0, 44, 44);
    [bt setImage:image forState:UIControlStateNormal];
    if (highlightedImage)
    {
        [bt setImage:highlightedImage forState:UIControlStateHighlighted];
    }
    [bt addTarget:self action:@selector (lgb_handleBackButton) forControlEvents:UIControlEventTouchUpInside];

    UIBarButtonItem* left = [[UIBarButtonItem alloc] initWithCustomView:bt];
    UIBarButtonItem* space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                                                                           target:nil
                                                                           action:nil];
    space.width = -10;

    self.navigationItem.leftBarButtonItems = @[space, left];

    [self lgb_setBackButtonAction:action];
}

- (void)lgb_handleBackButton
{
    BackButtonAction action = [self lgb_backButtonAction];
    if (action)
    {
        action ();
    }
    else
    {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (void)lgb_setBackButtonAction:(id)action
{
    objc_setAssociatedObject (self, @selector (lgb_backButtonAction), action, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (id)lgb_backButtonAction
{
    return objc_getAssociatedObject (self, _cmd);
}

@end
