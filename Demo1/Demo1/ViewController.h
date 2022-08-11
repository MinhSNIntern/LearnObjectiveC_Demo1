//
//  ViewController.h
//  Demo1
//
//  Created by vfa on 8/11/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UILabel *alertText;
@property (weak, nonatomic) IBOutlet UILabel *switchStatusText;
@property (weak, nonatomic) IBOutlet UISwitch *switchBtn;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (weak, nonatomic) IBOutlet UILabel *valueText;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UITextField *dateText;
- (IBAction)dateSelected:(id)sender;

- (IBAction)showAlertBtn:(id)sender;
- (IBAction)switchSwipped:(id)sender;
@end

