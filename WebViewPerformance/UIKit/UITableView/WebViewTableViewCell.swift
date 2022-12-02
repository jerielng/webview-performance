//
//  WebViewTableViewCell.swift
//  WebViewPerformance
//
//  Created by Jeriel Ng on 12/2/22.
//

import UIKit
import WebKit

class WebViewTableViewCell: UITableViewCell {
  static let reuseIdentifier = "WebViewTableViewCell"
  
  lazy var webView: WKWebView = {
    let webView = WKWebView()
    webView.backgroundColor = .red
    webView.scrollView.isScrollEnabled = false
    webView.translatesAutoresizingMaskIntoConstraints = false
    return webView
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    contentView.addSubview(webView)
    
    NSLayoutConstraint.activate([
      webView.topAnchor.constraint(equalTo: contentView.topAnchor),
      webView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
      webView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
      webView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
    ])
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
