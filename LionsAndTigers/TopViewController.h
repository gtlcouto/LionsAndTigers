//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Gustavo Couto on 2015-01-15.
//  Copyright (c) 2015 Gustavo Couto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HUDViewController.h"

@protocol TopDelegate <NSObject>

-(void)topRevealButtonTapped;


@end

@interface TopViewController : UIViewController <HUDProtocol>


@property (weak, nonatomic) id<TopDelegate> delegate;

@end
