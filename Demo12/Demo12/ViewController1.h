//
//  ViewController1.h
//  Demo12
//
//  Created by vfa on 8/22/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewController1 : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *dataLabel;

-(void) setText:(NSString *)text;
@end

NS_ASSUME_NONNULL_END
