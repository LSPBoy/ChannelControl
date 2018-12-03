//
//  ChannelControl.h
//  ChannelDemo
//
//  Created by Object on 2018/12/3.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^ChannelBlock)(NSArray *inUseTitles,NSArray *unUseTitles);

@interface ChannelControl : NSObject

+( ChannelControl*)shareControl;

-(void)showChannelViewWithInUseTitles:(NSArray*)inUseTitles unUseTitles:(NSArray*)unUseTitles finish:(ChannelBlock)block;

@end

NS_ASSUME_NONNULL_END
