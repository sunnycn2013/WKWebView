//
//  JDWebView.m
//  WKWebView
//
//  Created by guochaoyang on 15/12/23.
//  Copyright © 2015年 guochaoyang. All rights reserved.
//

#import "JDWebView.h"

@interface JDWebView ()
{
    
}

@end
@implementation JDWebView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self initUIWithFrame:frame];
    }
    return self;
}

- (void)initUIWithFrame:(CGRect)frame
{
//#if __IPHONE_OS_VERSION_MAX_ALLOWED > __IPHONE_8_0
    _wkWebView = [[WKWebView alloc] initWithFrame:frame];
    _wkWebView.navigationDelegate = (id<WKNavigationDelegate>)self;
    _wkWebView.UIDelegate = (id<WKUIDelegate>)self;
    [self addSubview:_wkWebView];
//#else
//    _webView = [[UIWebView alloc] initWithFrame:frame];
//    _webView.delegate = (id<UIWebViewDelegate>)self;
//    [self addSubview:_webView];
//#endif
    
}

//- (void)execu

- (void)loadRequest:(NSURLRequest *)request
{
    [_wkWebView loadRequest:request];
}


#pragma mark  - WKNavigationDelegate

- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler
{
    NSLog(@"decidePolicyForNavigationAction ");
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler
{
    NSLog(@"decidePolicyForNavigationResponse ");

}

- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(null_unspecified WKNavigation *)navigation
{
    NSLog(@"didStartProvisionalNavigation ");

}

- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(null_unspecified WKNavigation *)navigation
{
    NSLog(@"didReceiveServerRedirectForProvisionalNavigation ");
}

- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(null_unspecified WKNavigation *)navigation withError:(NSError *)error
{
    NSLog(@"didFailProvisionalNavigation ");

}

- (void)webView:(WKWebView *)webView didCommitNavigation:(null_unspecified WKNavigation *)navigation
{
    NSLog(@"didCommitNavigation ");

}

- (void)webView:(WKWebView *)webView didFinishNavigation:(null_unspecified WKNavigation *)navigation
{
    NSLog(@"didFinishNavigation ");

}

- (void)webView:(WKWebView *)webView didFailNavigation:(null_unspecified WKNavigation *)navigation withError:(NSError *)error
{
    NSLog(@"didFailNavigation ");

}

- (void)webView:(WKWebView *)webView didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(void (^)(NSURLSessionAuthChallengeDisposition disposition, NSURLCredential *__nullable credential))completionHandler
{
    NSLog(@"didReceiveAuthenticationChallenge ");

}

- (void)webViewWebContentProcessDidTerminate:(WKWebView *)webView NS_AVAILABLE(10_11, 9_0)
{
    NSLog(@"webViewWebContentProcessDidTerminate ");

}

# pragma mark - UIDelegate

- (nullable WKWebView *)webView:(WKWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures
{
    NSLog(@"createWebViewWithConfiguration ");
    return _wkWebView;
}

- (void)webViewDidClose:(WKWebView *)webView NS_AVAILABLE(10_11, 9_0)
{
    NSLog(@" ");

}

- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler
{
    NSLog(@"webViewDidClose ");

}

- (void)webView:(WKWebView *)webView runJavaScriptConfirmPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(BOOL result))completionHandler
{
    NSLog(@"runJavaScriptConfirmPanelWithMessage ");

}

- (void)webView:(WKWebView *)webView runJavaScriptTextInputPanelWithPrompt:(NSString *)prompt defaultText:(nullable NSString *)defaultText initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(NSString * __nullable result))completionHandler
{
    NSLog(@"runJavaScriptTextInputPanelWithPrompt ");

}


# pragma make - UIWebViewDelegate

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error
{
}

@end
