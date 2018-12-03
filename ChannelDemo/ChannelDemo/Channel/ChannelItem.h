//
//  ChannelItem.h
//  ChannelDemo
//
//  Created by Object on 2018/12/3.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChannelItem : UICollectionViewCell

//标题
@property (nonatomic, copy) NSString *title;

//是否正在移动状态
@property (nonatomic, assign) BOOL isMoving;

//是否被固定
@property (nonatomic, assign) BOOL isFixed;

@end

NS_ASSUME_NONNULL_END
