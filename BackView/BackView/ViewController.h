//
//  ViewController.h
//  BackView
//
//  Created by Nguyen Duc Tai on 4/7/16.
//  Copyright © 2016 TechKid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BackViewController.h"

@interface ViewController : UIViewController 

@property BackViewController *back;

@property (weak, nonatomic) IBOutlet UIButton *menu;
- (IBAction)click_button:(id)sender;

@end

