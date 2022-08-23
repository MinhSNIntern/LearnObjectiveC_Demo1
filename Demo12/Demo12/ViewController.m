//
//  ViewController.m
//  Demo12
//
//  Created by vfa on 8/22/22.
//

#import "ViewController.h"
#import "ViewController1.h"

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self.dataTextField resignFirstResponder];
    return YES;
}

- (void) displayTextIsRequired{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Alert" message:@"Please enter some text in the text field" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *actionOK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:actionOK];
    [self presentViewController:alert animated:YES completion:nil];
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    
    if(identifier != nil) NSLog(@"%@", identifier);
    if([identifier isEqualToString:@"pushViewController1"]){
        if([self.dataTextField.text length] == 0){
        
            [self displayTextIsRequired];
            return  NO;
        }
    }
    return  YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if(segue.identifier != nil) NSLog(@"%@", segue.identifier);
    if([segue.identifier isEqualToString:@"pushViewController1"]){
        ViewController1 *nextController = segue.destinationViewController;
        
        [nextController setText:self.dataTextField.text];
    }
}
@end
