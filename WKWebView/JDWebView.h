//
//  JDWebView.h
//  WKWebView
//
//  Created by guochaoyang on 15/12/23.
//  Copyright © 2015年 guochaoyang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@class JDWebView;
@protocol JDWebViewDelegate <NSObject>

@optional

- (JDWebView *)webView:(JDWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(JDWebView *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures;

- (void)webViewDidClose:(JDWebView *)webView NS_AVAILABLE(10_11, 9_0);

- (void)webView:(JDWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler;

- (void)webView:(JDWebView *)webView runJavaScriptConfirmPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(BOOL result))completionHandler;

- (void)webView:(JDWebView *)webView runJavaScriptTextInputPanelWithPrompt:(NSString *)prompt defaultText:(NSString *)defaultText initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(NSString * result))completionHandler;

@end

@interface JDWebView : UIView
{
    WKWebView *_wkWebView;
    UIWebView *_webView;
}

@property (nonatomic, readonly, copy) NSURL *URL;

@property (nonatomic, assign) id<JDWebViewDelegate> delegate;

- (void)loadRequest:(NSURLRequest *)request;


@end
