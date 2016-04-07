//
//  ViewController.m
//  BackView
//
//  Created by Nguyen Duc Tai on 4/7/16.
//  Copyright © 2016 TechKid. All rights reserved.
//

#import "ViewController.h"
#import "BackViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click_button:(id)sender {
    //khoi tao
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
   BackViewController *back = [storyboard instantiateViewControllerWithIdentifier:@"BackViewController"];
    
    [self.view addSubview: back.view];
}
@end
