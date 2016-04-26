//
//  ViewController.m
//  Tap_Touch
//
//  Created by Nguyen Duc Tai on 4/24/16.
//  Copyright © 2016 TechKid. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int imgIndex = 7;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self RunGesture];
    [self RunSwipe];
    
}

- (void) RunGesture
{
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickTouch)];
    tapGesture.numberOfTouchesRequired = 1;
    tapGesture.numberOfTapsRequired = 1;
    [self.imgDemo addGestureRecognizer:tapGesture];
    ///
    UIRotationGestureRecognizer *rotateGesture = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(didRotate:)];
    [self.imgDemo addGestureRecognizer:rotateGesture];
    
    //
    UIPinchGestureRecognizer *pinch = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(didPinch:)];
    [self.imgDemo addGestureRecognizer:pinch];
    ////
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(didPan:)];
    [self.img2 addGestureRecognizer:pan];
    ///
    self.imgDemo.userInteractionEnabled = YES;
    self.img2.userInteractionEnabled = YES;
    
    pan.delegate = self;
    pinch.delegate = self;
    rotateGesture.delegate = self;

}

- (void) RunSwipe
{
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLoadImg:)];
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLoadImg:)];
    UISwipeGestureRecognizer *swipeUp = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLoadImg:)];
    UISwipeGestureRecognizer *swipeDown = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLoadImg:)];
    // Setting the swipe direction.
    [swipeLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
    [swipeRight setDirection:UISwipeGestureRecognizerDirectionRight];
    [swipeUp setDirection:UISwipeGestureRecognizerDirectionUp];
    [swipeDown setDirection:UISwipeGestureRecognizerDirectionDown];
    
    // Adding the swipe gesture on image view
    [_imgDemo addGestureRecognizer:swipeLeft];
    [_imgDemo addGestureRecognizer:swipeRight];
    [_imgDemo addGestureRecognizer:swipeUp];
    [_imgDemo addGestureRecognizer:swipeDown];
}
-(void) swipeLoadImg:(UISwipeGestureRecognizer *)swipe
{
    NSArray *images = [[NSArray alloc] initWithObjects:@"you.jpg",
                                                        @"bd1.jpg",
                                                        @"t2.jpg",
                                                        @"3.png",
                                                        @"4.jpg",
                                                        @"5.jpg",
                                                        @"cuoi.jpg", nil];
    
    if (swipe.direction == UISwipeGestureRecognizerDirectionLeft) {
        imgIndex++;
        NSLog(@"Left Swipe");
    }
    
    if (swipe.direction == UISwipeGestureRecognizerDirectionRight) {
        imgIndex--;
        NSLog(@"Right Swipe");
    }

    if (swipe.direction == UISwipeGestureRecognizerDirectionUp) {
        imgIndex--;
        NSLog(@"Up Swipe");
    }
    
    if (swipe.direction == UISwipeGestureRecognizerDirectionDown) {
        imgIndex++;
        NSLog(@"Down Swipe");
    }
    
    imgIndex = (imgIndex < 0) ? ([images count] - 1):
    imgIndex % [images count];
    self.imgDemo.image = [UIImage imageNamed:[images objectAtIndex:imgIndex]];

}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}

- (void)tapDetected:(UITapGestureRecognizer *)tapRecognizer
{
    [UIView animateWithDuration:0.25 animations:^{
        self.imgDemo.center = CGPointMake(CGRectGetMidX(self.view.bounds), CGRectGetMidY(self.view.bounds));
        self.imgDemo.transform = CGAffineTransformIdentity;
    }];
}

- (IBAction)didPinch:(UIPinchGestureRecognizer *)pinchGestureRecognizer {
    _imgDemo.transform = CGAffineTransformScale(_imgDemo.transform, pinchGestureRecognizer.scale, pinchGestureRecognizer.scale);
    CGFloat scale = pinchGestureRecognizer.scale;

    pinchGestureRecognizer.scale = 1;
}

- (IBAction)didRotate:(UIRotationGestureRecognizer *)rotationGestureRecognizer {
    _imgDemo.transform = CGAffineTransformRotate(_imgDemo.transform, rotationGestureRecognizer.rotation);
    CGFloat angle = rotationGestureRecognizer.rotation;

    rotationGestureRecognizer.rotation = 0;
}

- (void) didTouch: (UITapGestureRecognizer *)touch;
{
    
}

- (void) didPan: (UIPanGestureRecognizer *)panGesture;
{
    NSLog(@"bat duoc PanGesture");
    CGPoint translation = [panGesture translationInView:self.view];
    panGesture.view.center = CGPointMake(panGesture.view.center.x + translation.x,
                                         panGesture.view.center.y + translation.y);
    
   // _img2.center = [panGesture translationInView:_img2.subviews];
    if (panGesture.state == UIGestureRecognizerStateEnded)
    {
        if (_img2.frame.origin.y >= self.view.center.y) {
            [UIView animateWithDuration:1.0f animations:^{
                _img2.center = CGPointMake(_img2.frame.origin.x, self.view.frame.size.height);
            }];
        }else {
            [UIView animateWithDuration:1.0f animations:^{
                _img2.center = CGPointMake(_img2.frame.origin.x, 0);
            }];
        }
    }
    
    [panGesture setTranslation:CGPointMake(0, 0) inView:self.view];
    
}

- (void) clickTouch
{
    NSLog(@"da bat duoc anh");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
