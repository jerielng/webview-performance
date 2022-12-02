//
//  UIKitTableViewController.swift
//  WebViewPerformance
//
//  Created by Jeriel Ng on 12/1/22.
//

import UIKit

class UIKitTableViewController: UITableViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.register(WebViewTableViewCell.self, forCellReuseIdentifier: WebViewTableViewCell.reuseIdentifier)
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: WebViewTableViewCell.reuseIdentifier) as! WebViewTableViewCell
    DispatchQueue.main.async {
      cell.webView.load(.init(url: .init(string: "https://google.com")!))
    }
    return cell
  }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    180
  }
}
