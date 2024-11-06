//
//  ContentView.swift
//  WatchApp Watch App
//
//  Created by mac on 2024/11/06.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var connectionHelper = ConnectionHelper()

  var body: some View {
    VStack {
      Button("+", action: {
        connectionHelper.count += 1
        connectionHelper.sendNewCount()
      })
      Text("\(connectionHelper.count)")
      Button("-", action: {
        connectionHelper.count -= 1
        connectionHelper.sendNewCount()
      })
    }
  }
}

#Preview {
    ContentView()
}
