//
//  webViewProxy.h
//  WKWebView
//
//  Created by guochaoyang on 15/12/23.
//  Copyright © 2015年 guochaoyang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol JDWebViewDelegate;
@interface WebViewProxy : NSObject

@property (nonatomic,assign) id <UIWebViewDelegate> webViewProxy;

@end
