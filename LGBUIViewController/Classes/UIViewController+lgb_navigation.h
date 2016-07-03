
#import <UIKit/UIKit.h>

typedef void (^BackButtonAction) (void);

@interface UIViewController (lgb_navigation)

- (void)lgb_setNavigationTitle:(NSString*)title color:(UIColor*)color font:(UIFont*)font;

- (void)lgb_setNavigationBackButtonWithImage:(UIImage*)image
                            highlightedImage:(UIImage*)highlightedImage
                                      action:(BackButtonAction)action;

@end