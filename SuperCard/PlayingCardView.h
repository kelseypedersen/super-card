//
//  PlayingCardView.h
//  SuperCard
//
//  Created by Kelsey Pedersen on 7/20/15.
//  Copyright (c) 2015 Kelsey Pedersen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property(nonatomic) NSUInteger rank;
@property(strong, nonatomic) NSString *suit;
@property(nonatomic) BOOL faceUp;

-(void)pinch:(UIPinchGestureRecognizer *)gesture;


@end
