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


-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    NSArray *attributesInRect = [[super layoutAttributesForElementsInRect:rect] copy];

    for (UICollectionViewLayoutAttributes *attr in attributesInRect) {
        CGFloat cellHieght = attr.frame.size.height;
        CGFloat viewHeight = self.collectionView.frame.size.height;
        attr.center = CGPointMake(attr.center.x, arc4random_uniform(viewHeight-cellHieght)+cellHieght/2.0);
        attr.size = CGSizeMake(attr.size.width, viewHeight - attr.center.y);
    }
    return attributesInRect;
}

@end
