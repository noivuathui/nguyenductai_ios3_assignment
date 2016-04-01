//
//  ViewController.m
//  Demo_Protocol
//
//  Created by Nguyen Duc Tai on 3/31/16.
//  Copyright © 2016 Tech Kid. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
    {
        static NSString *simpleTableIdentifier = @"SimpleTableItem";
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
        
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        }
        
        cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
        return cell;
    }

    
    self.Hello.text = @"Hello";
    
            UIAlertView *alert = [[UIAlertView alloc]
                                    initWithTitle:@"Menu"
                                    message: @"Ok em tới đây rôi. :D"
                                    delegate: self
                                    cancelButtonTitle: @"End"
                                    otherButtonTitles: @"Start", @"Stop" ,nil];
            [alert show];

}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1)
    {
        NSLog(@"bat đc may roi..");
        UIAlertView *myalert = [[UIAlertView alloc]
                                initWithTitle:@"Lever 2"
                                message:@"Bắt đầu "
                                delegate:self
                                cancelButtonTitle:@"OK"
                                otherButtonTitles:nil];
        [myalert show];
            
    }
    
    if (buttonIndex == 2)
    {
        NSLog(@"chạy đâu cho thoát");
        UIAlertView *myalert = [[UIAlertView alloc]
                                initWithTitle:@"Lever 2"
                                message:@"Dừng Game"
                                delegate:self
                                cancelButtonTitle:@"OK"
                                otherButtonTitles:nil];
            
        [myalert show];

    }
    //else
    if (buttonIndex == 3)
    {
        NSLog(@"thua rồi");
        UIAlertView *myalert = [[UIAlertView alloc]
                                initWithTitle:@"Lever 2"
                                message:@"Bạn chơi ngu quá"
                                delegate:self
                                cancelButtonTitle:@"OK"
                                otherButtonTitles:nil];
        
        [myalert show];
        //[myalert release];
    
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)start:(id)sender {
    NSLog(@" ban bat dau vao game");
}

- (IBAction)stop:(id)sender {
    NSLog(@"game dang duoc dung lai");
}

- (IBAction)end:(id)sender {
    NSLog(@"tro choi ket thuc");
}
@end
