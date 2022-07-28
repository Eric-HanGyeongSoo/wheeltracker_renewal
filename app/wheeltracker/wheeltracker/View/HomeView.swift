//
//  ContentView.swift
//  wheeltracker
//
//  Created by CodeCamper on 2022/07/28.
//

import SwiftUI

struct HomeView: View {
  @StateObject var viewModel = HomeViewModel()
  
  var body: some View {
    VStack(spacing: 50) {
      Text("\(viewModel.pushCount)")
        .font(.system(size: 50))
        .padding()
      
      MonthStateView()
        .frame(maxWidth: .infinity)
      Spacer()
    }.modifier(BackgroundModifier())
  }
}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
