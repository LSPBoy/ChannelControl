//
//  ChannelView.h
//  ChannelDemo
//
//  Created by Object on 2018/12/3.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChannelView : UIView

@property (nonatomic, strong) NSMutableArray *inUseTitles;

@property (nonatomic,strong) NSMutableArray *unUseTitles;

-(void)reloadData;

@end

NS_ASSUME_NONNULL_END
