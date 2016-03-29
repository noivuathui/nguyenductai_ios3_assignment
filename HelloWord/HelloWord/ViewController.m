//
//  ViewController.m
//  HelloWord
//
//  Created by Nguyen Duc Tai on 3/26/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
//

#import "ViewController.h"
#import "Trees.h"
#import "Flower.h"
#import "Vegetables.h"
#import "Trees.h"
#import "Vua.h"
#import "Tot.h"
#import "Xe.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    self.lblHello.text = @"ok tao";
    self.lbl3.text = @"1234 ";
    self.image.image = [UIImage imageNamed:@"minh2.png"];
    self.image.contentMode = UIViewContentModeScaleAspectFill;
    self.image.clipsToBounds = NO;
    
    
    Flower *flower1 = [[Flower alloc]init];
    [flower1 smell];
    [flower1 drop];
    
    Vegetables *vege = [[Vegetables alloc]init];
    [vege tastc];
    [vege drop];
    
    Trees *tree1 = [[Trees alloc]init];
    tree1.name = @"aaaa...";
    
    Vua *vua = [[Vua alloc]init];
    vua.self.X = 3;
    vua.self.Y = 1;
    [vua move];
    [vua eat];
    
    Tot *tot1 = [[Tot alloc]init];
    tot1.self.X = 1;
    tot1.self.Y = 1;
    [tot1 move];
    [tot1 eat];
    
    Xe *xe1 = [[Xe alloc]init];
    xe1.self.X = 1;
    xe1.self.Y = 0;
    [xe1 move];
    [xe1 eat];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
