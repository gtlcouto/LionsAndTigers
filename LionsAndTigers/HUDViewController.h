//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Gustavo Couto on 2015-01-15.
//  Copyright (c) 2015 Gustavo Couto. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HUDProtocol <NSObject>

-(void)tigersButtonTapped;

-(void)lionsButtonTapped;



@end

@interface HUDViewController : UIViewController



@property (nonatomic, weak) id<HUDProtocol> delegate;


@end
