//
//  MyLiveActivityLiveActivity.swift
//  MyLiveActivity
//
//  Created by Jeriel Ng on 12/9/22.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct MyLiveActivityAttributes: ActivityAttributes {
  public struct ContentState: Codable, Hashable {
    // Dynamic stateful properties about your activity go here!
    var hoursLeft: Int
  }
  
  // Fixed non-changing properties about your activity go here!
  var name: String
}

struct MyLiveActivityLiveActivity: Widget {
  var body: some WidgetConfiguration {
    ActivityConfiguration(for: MyLiveActivityAttributes.self) { context in
      // Lock screen/banner UI goes here
      VStack {
        Text("\(context.state.hoursLeft)")
      }
      .activityBackgroundTint(Color.cyan)
      .activitySystemActionForegroundColor(Color.black)
      
    } dynamicIsland: { context in
      DynamicIsland {
        // Expanded UI goes here.  Compose the expanded UI through
        // various regions, like leading/trailing/center/bottom
        DynamicIslandExpandedRegion(.leading) {
          Text("Leading")
        }
        DynamicIslandExpandedRegion(.trailing) {
          Text("Trailing")
        }
        DynamicIslandExpandedRegion(.bottom) {
          Text("\(context.state.hoursLeft)")
          // more content
        }
      } compactLeading: {
        Text("L")
      } compactTrailing: {
        Text("T")
      } minimal: {
        Text("Min")
      }
      .widgetURL(URL(string: "http://www.apple.com"))
      .keylineTint(Color.red)
    }
  }
}
