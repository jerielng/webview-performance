//
//  UIKitCollectionViewController.swift
//  WebViewPerformance
//
//  Created by Jeriel Ng on 12/2/22.
//

import UIKit

class UIKitCollectionViewController: UICollectionViewController {
  override func loadView() {
    self.view = .init(frame: .zero)
    let layout = UICollectionViewFlowLayout()
    collectionView = .init(frame: .zero, collectionViewLayout: layout)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    collectionView.register(WebViewCollectionViewCell.self, forCellWithReuseIdentifier: WebViewCollectionViewCell.reuseIdentifier)
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: WebViewCollectionViewCell.reuseIdentifier, for: indexPath) as! WebViewCollectionViewCell
    cell.webView.load(.init(url: .init(string: "https://google.com/")!))
    return cell
  }
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    100
  }
}

extension UIKitCollectionViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    .init(width: view.bounds.width / 3.5, height: view.bounds.height / 5)
  }
}
