//
//  webViewProxy.m
//  WKWebView
//
//  Created by guochaoyang on 15/12/23.
//  Copyright © 2015年 guochaoyang. All rights reserved.
//

#import "WebViewProxy.h"

@implementation WebViewProxy

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSLog(@"webViewProxy : shouldStartLoadWithRequest ...");
    return YES;
    
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"webViewProxy : webViewDidStartLoad ...");
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"webViewProxy : webViewDidFinishLoad ...");
    
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error
{
    NSLog(@"webViewProxy : didFailLoadWithError ...");
    
}


#pragma mark - Method Forwarding
- (BOOL)respondsToSelector:(SEL)aSelector
{
    if ([super respondsToSelector:aSelector]) {
        return YES;
    }
    
    if ([self.webViewProxy respondsToSelector:aSelector]) {
        return YES;
    }
    
    return NO;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector
{
    NSMethodSignature *signature = [super methodSignatureForSelector:aSelector];
    if (!signature) {
        if (self.webViewProxy && [self.webViewProxy respondsToSelector:aSelector]) {
            return [(NSObject *)self.webViewProxy methodSignatureForSelector:aSelector];
        }
    }
    
    return signature;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation
{
    if (self.webViewProxy && [self.webViewProxy respondsToSelector:[anInvocation selector]]) {
        [anInvocation invokeWithTarget:self.webViewProxy];
    }
}


@end
