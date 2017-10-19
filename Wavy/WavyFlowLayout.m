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
    
    NSLog(@"There are %ld attributes in the rect", [attributesInRect count]);
    NSLog(@"Rect dimensions: x:%f, y:%f, width:%f, height:%f", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
    NSLog(@"Screen frame: x:%f y:%f width:%f height:%f", self.collectionView.frame.origin.x, self.collectionView.frame.origin.y, self.collectionView.frame.size.width, self.collectionView.frame.size.height);
    
    
    for (UICollectionViewLayoutAttributes *attr in attributesInRect) {
        CGFloat cellHieght = attr.frame.size.height;
        CGFloat viewHeight = self.collectionView.frame.size.height;
        NSLog(@"cellHeight: %f, safeYZone: %f", cellHieght, viewHeight);
        NSLog(@"Center: x:%f y:%f", attr.center.x, attr.center.y);
        attr.center = CGPointMake(attr.center.x, arc4random_uniform(viewHeight-cellHieght)+cellHieght/2.0);
        attr.size = CGSizeMake(attr.size.width, attr.center.y);
    }
    
    
    
    return attributesInRect;
}

@end
