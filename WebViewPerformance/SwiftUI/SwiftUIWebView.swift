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
    WKWebView.build()
  }
  
  func updateUIView(_ uiView: WKWebView, context: Context) {
    DispatchQueue.main.async { [weak uiView] in
      let request: URLRequest = .init(url: .init(string: "https://www.youtube.com/watch?v=gJXFebyccfg")!)
      uiView?.loadSimulatedRequest(request,
                                   responseHTML: """
<iframe width="560" height="315" src="https://www.youtube.com/embed/gJXFebyccfg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
""")
    }
  }
  
  typealias UIViewType = WKWebView
}
