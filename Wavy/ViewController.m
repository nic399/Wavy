//
//  ViewController.m
//  Wavy
//
//  Created by Nicholas Fung on 2017-10-19.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "ViewController.h"
#import "WavyCollectionViewCell.h"
#import "WavyFlowLayout.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UICollectionView *containerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.containerView registerNib:[UINib nibWithNibName:@"WavyCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"WavyCell"];
    
    WavyFlowLayout *myLayout = [[WavyFlowLayout alloc] init];
    self.containerView.collectionViewLayout = myLayout;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    WavyCollectionViewCell *cell = [self.containerView dequeueReusableCellWithReuseIdentifier:@"WavyCell" forIndexPath:indexPath];
    cell.label.text = [NSString stringWithFormat:@"cell%ld", (long)indexPath.item];
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 13;
}

@end
