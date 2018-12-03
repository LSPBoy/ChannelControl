//
//  ChannelHeader.m
//  ChannelDemo
//
//  Created by Object on 2018/12/3.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import "ChannelHeader.h"

@interface  ChannelHeader ()
{
    UILabel *_titleLabel;
    
    UILabel *_subtitleLabel;
}
@end

@implementation  ChannelHeader

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self buildUI];
    }
    return self;
}

-(void)buildUI
{
    CGFloat marginX = 15.0f;
    
    CGFloat labelWidth = (self.bounds.size.width - 2*marginX)/2.0f;
    
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(marginX, 0, labelWidth, self.bounds.size.height)];
    _titleLabel.textColor = [UIColor blackColor];
    [self addSubview:_titleLabel];
    
    _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(labelWidth + marginX, 0, labelWidth, self.bounds.size.height)];
    _subtitleLabel.textColor = [UIColor lightGrayColor];
    _subtitleLabel.textAlignment = NSTextAlignmentRight;
    _subtitleLabel.font = [UIFont systemFontOfSize:15.0f];
    [self addSubview:_subtitleLabel];
}

-(void)setTitle:(NSString *)title
{
    _title = title;
    _titleLabel.text = title;
}

-(void)setSubTitle:(NSString *)subTitle
{
    _subTitle = subTitle;
    _subtitleLabel.text = subTitle;
}

@end
