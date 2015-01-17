//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Gustavo Couto on 2015-01-15.
//  Copyright (c) 2015 Gustavo Couto. All rights reserved.
//

#import "TopViewController.h"
#import "CustomCollectionViewCell.h"
#import "HUDViewController.h"

@interface TopViewController () <UICollectionViewDataSource, UIApplicationDelegate>

@property NSMutableArray * photoArray;
@property NSMutableArray * lionsArray;
@property NSMutableArray * tigerArray;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.photoArray = [NSMutableArray new];
    self.lionsArray = [NSMutableArray new];
    self.tigerArray = [NSMutableArray new];

    for(int i = 1; i < 4; i++)
    {
        [self.lionsArray addObject:[UIImage imageNamed:[NSString stringWithFormat:@"lion%i", i]]];
    }
    for(int i = 1; i < 4; i++)
    {
        [self.tigerArray addObject:[UIImage imageNamed:[NSString stringWithFormat:@"tiger%i", i]]];
    }

    self.photoArray = self.lionsArray;

}

- (IBAction)onMenuButtonPressed:(id)sender {
    [self.delegate topRevealButtonTapped];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.photoArray.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.imageViewCell.image = [self.photoArray objectAtIndex:indexPath.row];
    return cell;
}

-(void)lionsButtonTapped
{
    self.photoArray = self.lionsArray;
    [self.collectionView reloadData];
    [self.delegate topRevealButtonTapped];
    
}

-(void)tigersButtonTapped
{
    self.photoArray = self.tigerArray;
    [self.collectionView reloadData];
    [self.delegate topRevealButtonTapped];

}

@end
