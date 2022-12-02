//
//  WKWebView+Builder.swift
//  WebViewPerformance
//
//  Created by Jeriel Ng on 12/2/22.
//

import WebKit

extension WKWebView {
  static func build() -> WKWebView {
    let configuration = WKWebViewConfiguration()
    configuration.allowsInlineMediaPlayback = true
    configuration.mediaTypesRequiringUserActionForPlayback = []
    
    let webView = WKWebView(frame: .zero, configuration: configuration)
    webView.backgroundColor = .red
    webView.scrollView.isScrollEnabled = false
    webView.translatesAutoresizingMaskIntoConstraints = false
    return webView
  }
}
