//
//  ChannelControl.m
//  ChannelDemo
//
//  Created by Object on 2018/12/3.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import "ChannelControl.h"
#import "ChannelView.h"

@interface  ChannelControl ()
{
    UINavigationController *_nav;
    
    ChannelView *_channelView;
    
    ChannelBlock _block;
}
@end

@implementation  ChannelControl

+( ChannelControl*)shareControl{
    static  ChannelControl *control = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        control = [[ ChannelControl alloc] init];
    });
    return control;
}

-(instancetype)init
{
    if (self = [super init]) {
        [self buildChannelView];
    }
    return self;
}

-(void)buildChannelView{
    
    _channelView = [[ ChannelView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    _nav = [[UINavigationController alloc] initWithRootViewController:[UIViewController new]];
    _nav.navigationBar.tintColor = [UIColor blackColor];
    _nav.topViewController.title = @"频道管理";
    _nav.topViewController.view = _channelView;
    _nav.topViewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(backMethod)];
}

-(void)backMethod
{
    [UIView animateWithDuration:0.3 animations:^{
        CGRect frame = _nav.view.frame;
        frame.origin.y = - _nav.view.bounds.size.height;
        _nav.view.frame = frame;
    }completion:^(BOOL finished) {
        [_nav.view removeFromSuperview];
    }];
    _block(_channelView.inUseTitles,_channelView.unUseTitles);
}

-(void)showChannelViewWithInUseTitles:(NSArray*)inUseTitles unUseTitles:(NSArray*)unUseTitles finish:(ChannelBlock)block{
    _block = block;
    _channelView.inUseTitles = [NSMutableArray arrayWithArray:inUseTitles];
    _channelView.unUseTitles = [NSMutableArray arrayWithArray:unUseTitles];
    [_channelView reloadData];
    
    CGRect frame = _nav.view.frame;
    frame.origin.y = - _nav.view.bounds.size.height;
    _nav.view.frame = frame;
    _nav.view.alpha = 0;
    [[UIApplication sharedApplication].keyWindow addSubview:_nav.view];
    [UIView animateWithDuration:0.3 animations:^{
        _nav.view.alpha = 1;
        _nav.view.frame = [UIScreen mainScreen].bounds;
    }];
}

@end
