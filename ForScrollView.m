//
//  ForScrollView.m
//  DoctorID
//
//  Created by Sergio Lopes on 12/2/14.
//

#import "ForScrollView.h"

#define noDisableVerticalScrollTag 836913//
//  ForScrollView.m
//  DoctorID
//
//  Created by Sergio Lopes on 12/2/14.
//  Copyright (c) 2014 Buildbox IT Solutions. All rights reserved.
//

#import "ForScrollView.h"

#define noDisableVerticalScrollTag 836913
#define noDisableHorizontalScrollTag 836914

@implementation UIImageView (ForScrollView)
    
- (void) setAlpha:(CGFloat)alpha {
    
    if (self.superview.tag == noDisableVerticalScrollTag) {
        if (alpha == 0 && self.autoresizingMask == UIViewAutoresizingFlexibleLeftMargin) {
            if (self.frame.size.width <10 && self.frame.size.height > self.frame.size.width) {
                UIScrollView *sc = (UIScrollView*)self.superview;
                if (sc.frame.size.height < sc.contentSize.height) {
                    alpha = 1;
                }
            }
        }
    }
    
    if (self.superview.tag == noDisableHorizontalScrollTag) {
        if (alpha == 0 && self.autoresizingMask == UIViewAutoresizingFlexibleTopMargin) {
            if (self.frame.size.height <10 && self.frame.size.height < self.frame.size.width) {
                UIScrollView *sc = (UIScrollView*)self.superview;
                if (sc.frame.size.width < sc.contentSize.width) {
                    alpha = 1;
                }
            }
        }
    }
    
    [super setAlpha:alpha];
}
    
@end

