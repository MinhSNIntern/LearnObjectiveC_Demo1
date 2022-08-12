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
    bool isCustomSlider;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //uipicker set up
    animals = [NSArray arrayWithObjects:@"Dog",@"Cat",@"Dolphin", nil];
    self.pickerView.delegate = self;
    self.pickerView.dataSource = self;
    
    //datepicker set up
    self.datePicker.datePickerMode=UIDatePickerModeDate;
    self.datePicker.contentHorizontalAlignment=UIControlContentHorizontalAlignmentCenter;
    
    //rangepicker set up
    
    isCustomSlider = false;
    self.rangeSlider.minimumValue=0.0f;
    self.rangeSlider.maximumValue=100.0f;
    self.rangeSlider.value=self.rangeSlider.maximumValue/2.0;
    
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

- (IBAction)segmentChange:(id)sender {
    switch(self.segmentControl.selectedSegmentIndex){
        case 0: self.view.backgroundColor = [UIColor greenColor];
            break;
        case 1: self.view.backgroundColor = [UIColor yellowColor];
            break;
        case 2: self.view.backgroundColor = [UIColor orangeColor];
    }
}

- (IBAction)changeToCustomSlider:(id)sender {
    isCustomSlider = true;
    self.rangeSlider.minimumTrackTintColor = [UIColor systemPinkColor];
    self.rangeSlider.maximumTrackTintColor = [UIColor systemBlueColor];
    self.rangeSlider.thumbTintColor = [UIColor redColor];
}

- (IBAction)sliderValueChange:(id)sender {
    self.rangeValue.text=[NSString stringWithFormat:@"%3f",self.rangeSlider.value];
    if(isCustomSlider==true){
        if(self.rangeSlider.value <= self.rangeSlider.maximumValue/2.0){
            self.rangeSlider.thumbTintColor = [UIColor systemBlueColor];
        }
        else{
            self.rangeSlider.thumbTintColor = [UIColor redColor];
        }
    }
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
    - (IBAction)changeCustomSwitch:(id)sender {
        self.switchBtn.thumbTintColor = [UIColor darkGrayColor];
        self.switchBtn.onTintColor = [UIColor redColor];
    }
@end
    
