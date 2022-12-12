//
//  ContentView.swift
//  WebViewPerformance
//
//  Created by Jeriel Ng on 11/30/22.
//

import SwiftUI
import WebKit
import UIKit

struct ContentView: View {
    var body: some View {
      TabView {
        SwiftUITabView()
          .tabItem {
            Label("SwiftUI", systemImage: "swift")
          }
        UIKitTableViewControllerRepresentable()
          .tabItem {
            Label("UITableView", systemImage: "list.bullet")
          }
        UIKitCollectionViewControllerRepresentable()
          .tabItem {
            Label("UICollectionView", systemImage: "tablecells.fill")
          }
        LiveActivityView()
          .tabItem {
            Label("Live Activity", systemImage: "clock.badge.exclamationmark")
          }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
