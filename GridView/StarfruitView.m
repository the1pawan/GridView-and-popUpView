//
//  StarfruitView.m
//  GridView
//
//  Created by Shreekant Pawar on 08/01/13.
//  Copyright (c) 2013 Shreekant Pawar. All rights reserved.
//

#import "StarfruitView.h"

@interface StarfruitView ()

@end

@implementation StarfruitView

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)BackHome:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
