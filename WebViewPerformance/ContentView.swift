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
        UIKitScrollViewControllerRepresentable()
          .tabItem {
            Label("UIKit", systemImage: "tablecells.fill")
          }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
