//
//  Color+Extension.swift
//  wheeltracker
//
//  Created by CodeCamper on 2022/07/28.
//

import Foundation
import SwiftUI

extension Color {
  enum ColorName: String {
    case backgroundColor
  }
  
  static func assetColor(_ name: ColorName) -> Color {
    return Color(name.rawValue)
  }
}
