//
//  HUDViewController.m
//  LionsAndTigers
//
//  Created by Gustavo Couto on 2015-01-15.
//  Copyright (c) 2015 Gustavo Couto. All rights reserved.
//

#import "HUDViewController.h"

@interface HUDViewController ()

@end

@implementation HUDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)onTigersButtonPressed:(id)sender {

    [self.delegate tigersButtonTapped];

}
- (IBAction)onLionsButtonPressed:(id)sender {

    [self.delegate lionsButtonTapped];

}


@end
