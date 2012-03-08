//
//  ABMenuItem.m
//  MoDiaryHD
//
//  Created by 阿笨不笨 on 2011/1/1.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ABMenuItem.h"

enum {
	kZoomActionTag = 0xc0c05002,
};

@implementation ABMenuItem
-(void) selected
{
	if(isEnabled_) {
		[super selected];
		[self stopActionByTag:kZoomActionTag];
		_originalScale = self.scale;
//		CCAction* moveAction = [CCPlace actionWithPosition:ccp(self.position.x+2,self.position.y-2)];
		CCAction *zoomAction = [CCScaleTo actionWithDuration:0.1f scale:_originalScale * 1.2f];
		zoomAction.tag = kZoomActionTag;
		[self runAction:zoomAction];
	}
}

-(void) unselected
{
	if(isEnabled_) {
		[super unselected];
		[self stopActionByTag:kZoomActionTag];
//		CCAction* moveAction = [CCPlace actionWithPosition:ccp(self.position.x-2,self.position.y+2)];
		CCAction *zoomAction = [CCScaleTo actionWithDuration:0.1f scale:1.0f];
		zoomAction.tag = kZoomActionTag;
		[self runAction:zoomAction];
	}
}
@end
