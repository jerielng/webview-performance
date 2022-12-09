//
//  UIKitTableViewController.swift
//  WebViewPerformance
//
//  Created by Jeriel Ng on 12/1/22.
//

import UIKit

class UIKitTableViewController: UITableViewController {
  private let websiteList: [String] = [
    "https://longdogechallenge.com/",
    "https://checkboxrace.com/",
    "https://onesquareminesweeper.com/",
    "http://heeeeeeeey.com/",
    "http://corndog.io/",
    "https://binarypiano.com/",
    "https://weirdorconfusing.com/",
    "https://mondrianandme.com/",
    "https://puginarug.com",
    "http://floatingqrcode.com/",
  ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.register(WebViewTableViewCell.self, forCellReuseIdentifier: WebViewTableViewCell.reuseIdentifier)
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: WebViewTableViewCell.reuseIdentifier) as! WebViewTableViewCell
    DispatchQueue.main.async { [weak self] in
      guard let website = self?.websiteList[indexPath.row] else { return }
      cell.webView.load(.init(url: .init(string: website)!))
    }
    return cell
  }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    180
  }
}
