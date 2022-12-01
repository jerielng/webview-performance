//
//  UIKitScrollViewController.swift
//  WebViewPerformance
//
//  Created by Jeriel Ng on 12/1/22.
//

import UIKit
import WebKit
import SwiftUI

class WebViewCell: UITableViewCell {
  static let reuseIdentifier = "WebViewCell"
  
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

class UIKitScrollViewController: UITableViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.register(WebViewCell.self, forCellReuseIdentifier: WebViewCell.reuseIdentifier)
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: WebViewCell.reuseIdentifier) as! WebViewCell
    DispatchQueue.main.async {
      cell.webView.load(.init(url: .init(string: "https://google.com")!))
    }
    return cell
  }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    180
  }
}

struct UIKitScrollViewControllerRepresentable: UIViewControllerRepresentable {
  func makeUIViewController(context: Context) -> UIKitScrollViewController {
    UIKitScrollViewController()
  }
  
  func updateUIViewController(_ uiViewController: UIKitScrollViewController, context: Context) {}
  
  typealias UIViewControllerType = UIKitScrollViewController
}
