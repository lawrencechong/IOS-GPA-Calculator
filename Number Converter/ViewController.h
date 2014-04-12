//
//  ViewController.h
//  Number Converter
//
//  Created by Lawrence Chong on 3/9/14.
//  Copyright (c) 2014 Lawrence Chong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *a;
@property (strong, nonatomic) IBOutlet UITextField *aminus;
@property (strong, nonatomic) IBOutlet UITextField *bplus;
@property (strong, nonatomic) IBOutlet UITextField *b;
@property (strong, nonatomic) IBOutlet UITextField *bminus;
@property (strong, nonatomic) IBOutlet UITextField *cplus;
@property (strong, nonatomic) IBOutlet UITextField *c;
@property (strong, nonatomic) IBOutlet UITextField *cminus;
@property (strong, nonatomic) IBOutlet UITextField *dplus;
@property (strong, nonatomic) IBOutlet UITextField *d;
@property (strong, nonatomic) IBOutlet UITextField *f;

@property (strong, nonatomic) IBOutlet UITextField *currentgpa;
@property (strong, nonatomic) IBOutlet UITextField *currentcredits;

@property (strong, nonatomic) IBOutlet UIButton *calculate;
@property (strong, nonatomic) IBOutlet UIButton *clear;

@property (strong, nonatomic) IBOutlet UILabel *semesterGPA;
@property (strong, nonatomic) IBOutlet UILabel *NewGPA;

-(IBAction)calc:(id)sender;
-(IBAction)reset:(id)sender;
@end
