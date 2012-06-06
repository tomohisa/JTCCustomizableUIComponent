//
// VerticallyAlignedLabel.h
// based on code on https://discussions.apple.com/thread/1759957?threadID=1759957&tstart=90

#import <Foundation/Foundation.h>


typedef enum VerticalAlignment {
    VerticalAlignmentTop=1,
    VerticalAlignmentMiddle=2,
    VerticalAlignmentBottom=3,
} VerticalAlignment;

@interface VerticallyAlignedLabel : UILabel {
@private
    VerticalAlignment verticalAlignment_;
}

@property (nonatomic, assign) VerticalAlignment verticalAlignment;

@end