//
//  LiveActivityView.swift
//  WebViewPerformance
//
//  Created by Jeriel Ng on 12/12/22.
//

import SwiftUI
import ActivityKit

struct LiveActivityView: View {
  var body: some View {
    Button("Start Live Activity") {
      startLiveActivity()
    }
  }
  
  private func startLiveActivity() {
    if ActivityAuthorizationInfo().areActivitiesEnabled {
      let attributes = MyLiveActivityAttributes.init(name: "My Live Activity")
      let contentState = MyLiveActivityAttributes.ContentState(hoursLeft: 5)
      if let activity = try? Activity.request(attributes: attributes, contentState: contentState) {
        print(activity.pushToken)
      }
    }
  }
}
