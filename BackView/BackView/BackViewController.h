//
//  BackViewController.h
//  BackView
//
//  Created by Nguyen Duc Tai on 4/7/16.
//  Copyright © 2016 TechKid. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface BackViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIView *menu_new;

@property (weak, nonatomic) IBOutlet UILabel *title;

@property (weak, nonatomic) IBOutlet UIButton *button_start;
- (IBAction)click_start:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *button_back;
- (IBAction)click_back:(id)sender;

@end
