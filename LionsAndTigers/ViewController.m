//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Gustavo Couto on 2015-01-15.
//  Copyright (c) 2015 Gustavo Couto. All rights reserved.
//

#import "ViewController.h"
#import "TopViewController.h"
#import "HUDViewController.h"

@interface ViewController () <TopDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftTopViewContainerConstrain;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightTopViewContainerConstrain;
@property TopViewController * tvc;
@property HUDViewController * hvc;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tvc.delegate = self;
    self.hvc.delegate = self.tvc;

}

-(void)topRevealButtonTapped
{
    if (self.leftTopViewContainerConstrain.constant > 10) {
        self.leftTopViewContainerConstrain.constant -= 70;
    } else
    {
    self.leftTopViewContainerConstrain.constant += 70;
    }

    

}


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSString * segueName = segue.identifier;
    if ([segueName isEqualToString: @"navSegue"]) {
        UINavigationController * myNavController = segue.destinationViewController;
        self.tvc = [myNavController.viewControllers objectAtIndex:0];

    }
    if ([segueName isEqualToString: @"hudSegue"]) {
        self.hvc = segue.destinationViewController;

    }
}



@end
