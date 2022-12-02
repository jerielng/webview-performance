//
//  SwiftUITab.swift
//  WebViewPerformance
//
//  Created by Jeriel Ng on 12/1/22.
//

import SwiftUI

struct SwiftUITabView: View {
    var body: some View {
      ScrollView {
        LazyVStack(alignment: .leading, spacing: 16.0) {
          ForEach(0..<10) { _ in
            SwiftUIWebView().frame(height: 260)
          }
        }
        .padding()
      }
    }
}
