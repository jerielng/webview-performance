//
//  WebViewCollectionViewCell.swift
//  WebViewPerformance
//
//  Created by Jeriel Ng on 12/2/22.
//

import UIKit
import WebKit

class WebViewCollectionViewCell: UICollectionViewCell {
  static let reuseIdentifier = "WebViewCollectionViewCell"
  
  lazy var webView: WKWebView = {
    WKWebView.build()
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
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
