//
//  ViewController1.m
//  Demo12
//
//  Created by vfa on 8/22/22.
//

#import "ViewController1.h"

@interface ViewController1 ()
@property (nonatomic,strong) NSString *dataText;
@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataLabel.text = self.dataText;
    [self.dataLabel sizeToFit];
    self.dataLabel.center = self.view.center;
    // Do any additional setup after loading the view.
}

-(void) setText:(NSString *)text{
    
    self.dataText = text;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
