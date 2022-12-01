//
//  SwiftUIWebView.swift
//  WebViewPerformance
//
//  Created by Jeriel Ng on 12/1/22.
//

import SwiftUI
import WebKit

struct SwiftUIWebView: UIViewRepresentable {
  func makeUIView(context: Context) -> WKWebView {
    let webView = WKWebView()
    webView.backgroundColor = .red
    webView.scrollView.isScrollEnabled = false
    return webView
  }
  
  func updateUIView(_ uiView: WKWebView, context: Context) {
    DispatchQueue.main.async { [weak uiView] in
      var request: URLRequest = .init(url: .init(string: "https://www.youtube.com/watch?v=gJXFebyccfg")!)
      uiView?.loadSimulatedRequest(request, responseHTML: """
<iframe width="560" height="315" src="https://www.youtube.com/embed/gJXFebyccfg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
""")
    }
  }
  
  typealias UIViewType = WKWebView
}
