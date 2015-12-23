//
//  ViewController.m
//  WKWebView
//
//  Created by guochaoyang on 15/12/23.
//  Copyright © 2015年 guochaoyang. All rights reserved.
//

#import "ViewController.h"
#import "WebViewProxy.h"
#import "JDWebView.h"

@interface ViewController ()<JDWebViewDelegate>

@property (strong, nonatomic) JDWebView *webView;
@property (strong, nonatomic)  WebViewProxy * webProxy;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"Index";
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]];
    
    
    _webView = [[JDWebView alloc] initWithFrame:self.view.bounds];
//    _webView.delegate = self;
    [self.view addSubview:_webView];
    
//    _webProxy  = [[WebViewProxy alloc] init];
//    self.webView.delegate = (id<JDWebViewDelegate>)_webProxy;
//    _webProxy.webViewProxy = (id<JDWebViewDelegate>)self;
    
    [self.webView loadRequest:request];
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSLog(@"shouldStartLoadWithRequest ...");
    return YES;

}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"webViewDidStartLoad ...");

}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"webViewDidFinishLoad ...");

}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error
{
    NSLog(@"didFailLoadWithError ...");

}

@end
