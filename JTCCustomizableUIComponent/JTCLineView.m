//
//  JTCLineView.m
//  C_POS
//
//  Created by Tomohisa Takaoka on 6/2/12.
/***************
 Copyright (c) 2012 Tomohisa Takaoka
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this
 software and associated documentation files (the "Software"), to deal in the Software
 without restriction, including without limitation the rights to use, copy, modify, merge,
 publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons
 to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies 
 or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
 INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR 
 PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE 
 FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR 
 OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
 DEALINGS IN THE SOFTWARE.
 ***************/

#import "JTCLineView.h"

@implementation JTCLineView
@synthesize startingPoint = _startingPoint;
@synthesize endingPoint = _endingPoint;
@synthesize lineWidth = _lineWidth;
@synthesize linePattern = _linePattern;
@synthesize lineColor = _lineColor;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void) awakeFromNib {
    [super awakeFromNib];
    self.backgroundColor = [UIColor clearColor];
    self.layer.masksToBounds = NO;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: _startingPoint];
    [bezierPath addLineToPoint: _endingPoint];
    if (_lineColor) {
        [_lineColor setStroke];
    }else {
        [[UIColor blackColor] setStroke];
    }
    if (_lineWidth) {
        bezierPath.lineWidth = [_lineWidth floatValue];
    }else {
        bezierPath.lineWidth = 1;
    }
    if (_linePattern) {
        NSArray* array=[_linePattern componentsSeparatedByString:@","];
        CGFloat bezierPattern[array.count];
        for (int i=0; i<array.count; i++) {
            bezierPattern[i] = [[array objectAtIndex:i] floatValue];
        }
        [bezierPath setLineDash: bezierPattern count: array.count phase: 0];
    }
    [bezierPath stroke];
}

@end
