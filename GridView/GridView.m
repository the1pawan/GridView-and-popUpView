//
//  GridView.m
//  GridView
//
//  Created by Shreekant Pawar on 08/01/13.
//  Copyright (c) 2013 Shreekant Pawar. All rights reserved.
//

#import "GridView.h"
#import "AppleView.h"
#import "OrangeView.h"
#import "StarfruitView.h"
#import "RasberriesView.h"
#import "PopUpViewController.h"
@interface GridView ()

@end

@implementation GridView
@synthesize pop;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)AppleView:(id)sender {
    AppleView *apple=[[AppleView alloc]initWithNibName:@"AppleView" bundle:nil];
    [self presentViewController:apple animated:YES completion:nil];
}

- (IBAction)starfruitView:(id)sender {
    StarfruitView *starfruit=[[StarfruitView alloc]initWithNibName:@"StarfruitView" bundle:nil];
    [self presentViewController:starfruit animated:YES completion:nil];
}

- (IBAction)OrangeView:(id)sender {
    OrangeView *orange=[[OrangeView alloc]initWithNibName:@"OrangeView" bundle:nil];
    [self presentViewController:orange animated:YES completion:nil];
}

- (IBAction)RasberriesView:(id)sender {
    RasberriesView *rasberry=[[RasberriesView alloc]initWithNibName:@"RasberriesView" bundle:nil];
    [self presentViewController:rasberry animated:YES completion:nil];
}

- (IBAction)aboutMe:(id)sender {
    PopUpViewController *popcntr=[[PopUpViewController alloc]initWithNibName:@"PopUpViewController" bundle:nil];
// To get popup custome view put popUpView initWithContentViewControlle:popUPView
//     pop=[[UIPopoverController alloc]initWithContentViewController:popcntr];
    
    pop=[[UIPopoverController alloc]initWithContentViewController:popcntr];
    [pop setDelegate:self];
    [pop setPopoverContentSize:CGSizeMake(300,350)];
    [pop presentPopoverFromRect:popUPButton.frame inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
}
@end
