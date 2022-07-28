//
//  MainTabView.swift
//  wheeltracker
//
//  Created by CodeCamper on 2022/07/28.
//

import SwiftUI

struct MainTabView: View {
  init() {
    UITabBar.appearance().backgroundColor = .white
  }
  
  var body: some View {
    TabView {
      HomeView()
        .tabItem {
          Label("Home", systemImage: "homekit")
            .foregroundColor(.black)
        }
    }
  }
}

struct MainTabView_Previews: PreviewProvider {
  static var previews: some View {
    MainTabView()
  }
}
