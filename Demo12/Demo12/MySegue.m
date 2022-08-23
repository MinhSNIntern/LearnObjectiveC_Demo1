//
//  MySegue.m
//  Demo12
//
//  Created by vfa on 8/22/22.
//

#import "MySegue.h"

@implementation MySegue
- (void)perform{
    UIViewController *src = self.sourceViewController;
    UIViewController *des = self.destinationViewController;
    
    [UIView transitionFromView:src.view toView:des.view duration:0.5f options:UIViewAnimationOptionTransitionFlipFromTop completion:^(BOOL finished) {
        NSLog(@"Transition finished");
    }];
}
@end
