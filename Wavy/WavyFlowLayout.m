//
//  WavyFlowLayout.m
//  Wavy
//
//  Created by Nicholas Fung on 2017-10-19.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "WavyFlowLayout.h"

@implementation WavyFlowLayout

- (void)prepareLayout {
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100, 50);
    // Set minimum interitem spacing to be huge to force all items to be on their own line
    self.minimumInteritemSpacing = CGFLOAT_MAX;
}

@end
