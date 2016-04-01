//
//  ViewController.h
//  Demo_Protocol
//
//  Created by Nguyen Duc Tai on 3/31/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *Hello;

@property (weak, nonatomic) IBOutlet UITableViewCell *tableView;


- (IBAction)start:(id)sender;
- (IBAction)stop:(id)sender;
- (IBAction)end:(id)sender;

@end

