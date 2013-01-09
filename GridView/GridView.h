//
//  GridView.h
//  GridView
//
//  Created by Shreekant Pawar on 08/01/13.
//  Copyright (c) 2013 Shreekant Pawar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIPopover+iPhone.h"

@interface GridView : UIViewController<UIPopoverControllerDelegate>
{
    IBOutlet UIViewController *popUpView;
    IBOutlet UIButton *popUPButton;
}
@property (nonatomic,retain) UIPopoverController *pop;


- (IBAction)AppleView:(id)sender;
- (IBAction)starfruitView:(id)sender;
- (IBAction)OrangeView:(id)sender;
- (IBAction)RasberriesView:(id)sender;
- (IBAction)aboutMe:(id)sender;

@end
