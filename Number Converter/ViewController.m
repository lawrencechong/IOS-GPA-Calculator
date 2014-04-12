//
//  ViewController.m
//  Number Converter
//
//  Created by Lawrence Chong on 3/9/14.
//  Copyright (c) 2014 Lawrence Chong. All rights reserved.
//

#import "ViewController.h"
#import "UIView+FormScroll.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                          action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    _a.text = nil;
    _aminus.text = nil;
    _bplus.text = nil;
    _b.text = nil;
    _bminus.text = nil;
    _cplus.text = nil;
    _c.text = nil;
    _cminus.text = nil;
    _dplus.text = nil;
    _d.text = nil;
    _f.text = nil;

    
}


- (IBAction)calc:(id)sender{
    [self dismissKeyboard];
    float a = [_a.text floatValue];
    float aminus = [_aminus.text floatValue];
    float bplus = [_bplus.text floatValue];
    float b = [_b.text floatValue];
    float bminus = [_bminus.text floatValue];
    float cplus = [_cplus.text floatValue];
    float c = [_c.text floatValue];
    float cminus = [_cminus.text floatValue];
    float dplus = [_dplus.text floatValue];
    float d = [_d.text floatValue];
    float f = [_f.text floatValue];
    
    float currCredits = a + aminus + bplus + b + bminus +
    cplus + c + cminus + dplus + d + f ;
    
    float points = (a * 4) + (aminus * 3.67) + (bplus * 3.33) + (b * 3) + (bminus * 2.67) + (cplus * 2.33) + (c * 2) + (cminus * 1.67) + (dplus * 1.33) + (d * 1) + (f * 0) ;
    
    float semesterGpa = points / currCredits;
    
    _semesterGPA.text = [NSString stringWithFormat:@"%1.2f", semesterGpa];
    
    float prevGPA = [_currentgpa.text floatValue];
    float prevCredits = [_currentcredits.text floatValue];
    
    float newGpa = ((prevGPA * prevCredits) + (points)) / (currCredits+ prevCredits);
    _NewGPA.text = [NSString stringWithFormat:@"%1.2f", newGpa];
    
    if (currCredits == 0){
        _semesterGPA.text = @"No Information";
    }
    if (prevCredits == 0 && currCredits == 0){
        _NewGPA.text = @"No Information";
    }
    
    NSString *info;
    if (currCredits == 0 && prevCredits == 0){
        info = @"You have not entered any information";
    }
    else if  (prevGPA > 4 || prevGPA < 0){
        info = @"You have entered invalid information";
    }
    else if (newGpa >= 3.5) {
        info = @"You are an excellent student. Keep up the good work. ";
        if (prevCredits != 0 && currCredits != 0){
            if (semesterGpa >= 3.5) {
                info = [info stringByAppendingString:@"This semester you were amazing. Top Student."];
            }
            else if (semesterGpa >= 3.0) {
                info = [info stringByAppendingString:@"This semester was good, a small drop though."];
            }
            else if (semesterGpa >= 2.5) {
                info = [info stringByAppendingString:@"This semester was not great though. Consider seeing an advisor."];
            }
            else if (semesterGpa >= 2.0) {
                info = [info stringByAppendingString:@"This semester did not go that well though. Please come to see an advisor"];
            }
            else {
                info = @"Please See an advisor IMMEDIATELY";
            }
        }
    }
    else if (newGpa >= 3.0){
        info = @"You are a good student. Keep up with the good grades. ";
        if (prevCredits != 0 && currCredits != 0){
            if (semesterGpa >= 3.5) {
                info = [info stringByAppendingString:@"This semester you did excellent. Keep up the good work. You did fantastic"];
            }
            else if (semesterGpa >= 3.0) {
                info = [info stringByAppendingString:@"This semester was good."];
            }
            else if (semesterGpa >= 2.5) {
                info = [info stringByAppendingString:@"This semester you dropped. Consider seeing an advisor."];
            }
            else if (semesterGpa >= 2.0) {
                info = [info stringByAppendingString:@"This semester did not go that well though. Please come to see an advisor"];
            }
            else {
                info = @"Please See an advisor IMMEDIATELY";
            }
        }
    }
    else if (newGpa >= 2.5){
        info = @"You might need some help in your classes. See an advisor please. ";
        if (prevCredits != 0 && currCredits != 0){
            if (semesterGpa >= 3.5) {
                info = @"This semester you did excellent. Keep up the good work. You did fantastic. Keep it Up!";
            }
            else if (semesterGpa >= 3.0) {
                info = @"This semester was good. Keep up with this improvement! Congratulations";
            }
            else if (semesterGpa >= 2.5) {
                info = [info stringByAppendingString:@"This semester was the same as usual. Have you attended any tutoring?"];
            }
            else if (semesterGpa >= 2.0) {
                info = [info stringByAppendingString:@"This semester did not go that well too. Again Please come to see an advisor"];
            }
            else {
                info = @"Please See an advisor IMMEDIATELY";
            }
        }
    }
    else if (newGpa >= 2.0){
        info = @"You really need to do better. See an advisor. ";
        if (prevCredits != 0 && currCredits != 0){
            if (semesterGpa >= 3.5) {
                info = @"This semester you did excellent. Keep up the good work. You did fantastic. Keep it Up!";
            }
            else if (semesterGpa >= 3.0) {
                info = @"This semester was good. Keep up with this improvement! Congratulations";
            }
            else if (semesterGpa >= 2.5) {
                info = [info stringByAppendingString:@"This semester there has improvement but you need to do better"];
            }
            else if (semesterGpa >= 2.0) {
                info = [info stringByAppendingString:@"This semester you did not improve. You will need to do so to graduate."];
            }
            else {
                info = @"Please See an advisor IMMEDIATELY";
            }
        }
    }
    else{
        info = @"See an advisor IMMEDIATELY. ";
        if (prevCredits != 0 && currCredits != 0){
            if (semesterGpa > 3.5) {
                info = @"This semester you did excellent. Keep up the good work. You did fantastic. Keep it Up!";
            }
            else if (semesterGpa > 3.0) {
                info = @"This semester was good. Keep up with this improvement! Congratulations";
            }
            else if (semesterGpa > 2.5){
                info = @"You are improving, keep up the work.";
            }
            else if (semesterGpa > 2.0) {
                info = @"You still need improvement. Please come and see an advisor";
            }
        }
    }
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Attention Student" message:info delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    [alert show];
    
}

-(IBAction)reset:(id)sender{
    _a.text = nil;
    _aminus.text = nil;
    _bplus.text = nil;
    _b.text = nil;
    _bminus.text = nil;
    _cplus.text = nil;
    _c.text = nil;
    _cminus.text = nil;
    _dplus.text = nil;
    _d.text = nil;
    _f.text = nil;
    _currentcredits.text = nil;
    _currentgpa.text = nil;
    _NewGPA.text = @"GPA";
    _semesterGPA.text = @"GPA";
}


-(void)dismissKeyboard {
    [_a resignFirstResponder];
    [_aminus resignFirstResponder];
    [_bplus resignFirstResponder];
    [_b resignFirstResponder];
    [_bminus resignFirstResponder];
    [_cplus resignFirstResponder];
    [_c resignFirstResponder];
    [_cminus resignFirstResponder];
    [_dplus resignFirstResponder];
    [_d resignFirstResponder];
    [_f resignFirstResponder];
    [_currentcredits resignFirstResponder];
    [_currentgpa resignFirstResponder];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{
    [self.view scrollToView:textField];
}

-(void) textFieldDidEndEditing:(UITextField *)textField{
    [self.view scrollToY:0];
    [textField resignFirstResponder];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
