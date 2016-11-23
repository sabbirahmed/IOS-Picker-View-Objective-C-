//
//  ViewController.m
//  PickerView
//
//  Created by Sabbir Ahmed on 11/22/16.
//  Copyright © 2016 Sabbir Ahmed. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSArray *mood;

@end

@implementation ViewController

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}


-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [self.mood count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return self.mood[row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    UIColor *colorMode;
    
    switch (row) {
        case 0:
            colorMode = [UIColor redColor];
            break;
            
        case 1:
            colorMode = [UIColor greenColor];
            break;

        case 2:
            colorMode = [UIColor grayColor];
            break;

        case 3:
            colorMode = [UIColor yellowColor];
            break;

        case 4:
            colorMode = [UIColor orangeColor];
            break;

        case 5:
            colorMode = [UIColor blueColor];
            break;

        case 6:
            colorMode = [UIColor purpleColor];
            break;
            
        case 7:
            colorMode = [UIColor whiteColor];
            break;
            
        case 8:
            colorMode = [UIColor darkGrayColor];
            break;

        default:
            colorMode = [UIColor whiteColor];
            break;
    }
    
    [[self view] setBackgroundColor:colorMode];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.mood = @[@"redColor", @"greenColor", @"grayColor", @"yellowColor", @"orangeColor", @"blueColor", @"purpleColor", @"whiteColor", @"darkGrayColor"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
