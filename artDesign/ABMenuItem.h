//
//  ABMenuItem.h
//  MoDiaryHD
//
//  Created by 阿笨不笨 on 2011/1/1.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface ABMenuItem : CCMenuItemImage {
	float	_originalScale;
	
}
-(void) selected;
-(void) unselected;

@end
