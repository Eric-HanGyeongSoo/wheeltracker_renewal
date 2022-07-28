//
//  BackgroundViewModifier.swift
//  wheeltracker
//
//  Created by CodeCamper on 2022/07/28.
//

import Foundation
import SwiftUI

struct BackgroundModifier: ViewModifier {
  func body(content: Content) -> some View {
    ZStack {
      Color.assetColor(.backgroundColor)
        .edgesIgnoringSafeArea(.all)
      content
    }
  }
}
