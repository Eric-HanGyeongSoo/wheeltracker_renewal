//
//  Image+Extension.swift
//  wheeltracker
//
//  Created by CodeCamper on 2022/07/28.
//

import Foundation
import SwiftUI

extension Image {
  enum ImageName: String {
    case homeFloor
    case yellowFish
  }
  
  static func assetImage(_ name: ImageName) -> Image {
    return Image(name.rawValue)
  }
}
