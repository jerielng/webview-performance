//
//  UIKitTableViewControllerRepresentable.swift
//  WebViewPerformance
//
//  Created by Jeriel Ng on 12/2/22.
//

import UIKit
import SwiftUI

struct UIKitTableViewControllerRepresentable: UIViewControllerRepresentable {
  func makeUIViewController(context: Context) -> UIKitTableViewController {
    UIKitTableViewController()
  }
  
  func updateUIViewController(_ uiViewController: UIKitTableViewController, context: Context) {}
  
  typealias UIViewControllerType = UIKitTableViewController
}

struct UIKitCollectionViewControllerRepresentable: UIViewControllerRepresentable {
  func makeUIViewController(context: Context) -> UIKitCollectionViewController {
    UIKitCollectionViewController()
  }
  
  func updateUIViewController(_ uiViewController: UIKitCollectionViewController, context: Context) {}
  
  typealias UIViewControllerType = UIKitCollectionViewController
}
