//
//  BetViewController.m
//  WagerNavigation
//
//  Created by SivajeeBattina on 11/5/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import "BetViewController.h"

@interface BetViewController ()

@end

@implementation BetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _winDataArray=[[NSMutableArray alloc] initWithObjects:@"Sivajee",@"25",@"M/L",@"chk1", nil];
    
    //_betDataDictionary=@[@"win":_winDataArray,@"exacta":]
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)ddMenuShow:(UIButton *)sender
{
    if (sender.tag == 0) {
        sender.tag = 1;
        self.ddMenu.hidden = NO;
        [sender setTitle:@"▲" forState:UIControlStateNormal];
        [self.view sendSubviewToBack:self.betCollectionView];
    } else {
        sender.tag = 0;
        self.ddMenu.hidden = YES;
        [sender setTitle:@"▼" forState:UIControlStateNormal];
    }
}
- (IBAction)ddMenuSelectionMade:(UIButton *)sender
{
    self.ddText.text = sender.titleLabel.text;
    [self.ddMenuShowButton setTitle:@"▼" forState:UIControlStateNormal];
    self.ddMenuShowButton.tag = 0;
    self.ddMenu.hidden = YES;
    switch (sender.tag) {
        case 1:
            while (self.winDataArray.count>4)
            {
                [self.winDataArray removeLastObject];
            }
            [self.winDataArray addObject:@"ch2"];
            [self.betCollectionView reloadData];
            break;
        case 2:
            while (self.winDataArray.count>5)
            {
                [self.winDataArray removeLastObject];
            }
            
            while (self.winDataArray.count<=5)
            {
                [self.winDataArray addObject:@"ch3"];
            }
            
            [self.betCollectionView reloadData];
            break;
        case 3:
            while (self.winDataArray.count>6)
            {
                [self.winDataArray removeLastObject];
            }
            while (self.winDataArray.count<=6)
            {
                [self.winDataArray addObject:@"ch4"];
            }
            
            [self.betCollectionView reloadData];
            break;
            
        default:
            while (self.winDataArray.count>3)
            {
                [self.winDataArray removeLastObject];
            }
            
            [self.winDataArray addObject:@"ch1"];
            [self.betCollectionView reloadData];

            
            break;
    }
}

-(NSInteger)numberOfSectionsInCollectionView:
(UICollectionView *)collectionView
{
    return 2;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    
    return _winDataArray.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CollectionViewCell *rowCell=[collectionView dequeueReusableCellWithReuseIdentifier:@"rowLabelidentifier" forIndexPath:indexPath];
   
    
    rowCell.rowLabel.text=[_winDataArray objectAtIndex:indexPath.row];
    
 
    
    return rowCell;
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
   
    if ((long)indexPath.row==0) {
        return CGSizeMake(90, 40);
    }
        return CGSizeMake(30,40);
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{

   

}
@end
