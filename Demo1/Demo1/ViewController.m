//
//  ViewController.m
//  Demo1
//
//  Created by vfa on 8/11/22.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *animals;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    animals = [NSArray arrayWithObjects:@"Dog",@"Cat",@"Dolphin", nil];
    self.pickerView.delegate = self;
    self.pickerView.dataSource = self;
    self.datePicker.datePickerMode=UIDatePickerModeDate;
    self.datePicker.contentHorizontalAlignment=UIControlContentHorizontalAlignmentCenter;
    
}


- (IBAction)switchSwipped:(id)sender {
    if(self.switchBtn.isOn){
        self.switchStatusText.text=@"Switch is ON";
    }
    else{
        self.switchStatusText.text=@"Switch is OFF";    }
}

- (IBAction)showAlertBtn:(id)sender {
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Alert" message:@"Change Text?" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *actionOK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.alertText.text = @"Hello";
    }];UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    }];
    [alert addAction:actionCancel];
    [alert addAction:actionOK];
    [self presentViewController: alert animated: YES completion:nil];
}

- (IBAction)dateSelected:(id)sender {
    NSDateFormatter *fomatter = [[NSDateFormatter alloc] init];
    fomatter.dateFormat = @"yyyy-MM-dd";
    NSDate *date = [self.datePicker date];
    self.dateText.text= [fomatter stringFromDate:date];
    
}

- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [animals count];
}
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return animals[row];
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    self.valueText.text=animals[row];
}

@end
