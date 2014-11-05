//
//  BetViewController.h
//  WagerNavigation
//
//  Created by SivajeeBattina on 11/5/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CollectionViewCell.h"

@interface BetViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>

@property (nonatomic, strong) IBOutlet UILabel *ddText;
@property (nonatomic, strong) IBOutlet UIView *ddMenu;
@property (nonatomic, strong) IBOutlet UIButton *ddMenuShowButton;
@property (nonatomic, strong) IBOutlet UICollectionView *betCollectionView;
@property(nonatomic,strong)NSMutableArray *winDataArray;
@property(nonatomic,strong)NSMutableArray *exactaDataArray;
@property(nonatomic,strong)NSMutableArray *TrifectDataArray;
@property(nonatomic,strong)NSMutableArray *superfactaDataArray;
@property(nonatomic,strong)NSMutableDictionary *betDataDictionary;
- (IBAction)ddMenuShow:(UIButton *)sender;
- (IBAction)ddMenuSelectionMade:(UIButton *)sender;

@end
