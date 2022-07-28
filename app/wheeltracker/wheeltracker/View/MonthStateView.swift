//
//  MonthStateView.swift
//  wheeltracker
//
//  Created by CodeCamper on 2022/07/28.
//

import SwiftUI

private struct FishView: View {
  @State var startPoint: CGSize
  @State var endPoint: CGSize
  @State var offset: CGSize = .zero
  @State var flipped = false
  
  var fishImage: Image
  
  var fishOrientedDegree: Double {
    if startPoint.width < endPoint.width {
      return 0
    } else {
      return 180
    }
  }
  
  func getRandomSize() -> CGSize {
    return CGSize(width: Int.random(in: -300...300), height: Int.random(in: -200...200))
  }
  
  func swim() {
    offset = startPoint
    let duration = Double.random(in: 8...15)
    withAnimation(.easeInOut(duration: duration)) {
      offset = endPoint
    }
    DispatchQueue.main.asyncAfter(deadline: .now() + TimeInterval(duration)) {
      self.startPoint = self.endPoint
      self.endPoint = getRandomSize()
      swim()
    }
  }
  
  var body: some View {
    fishImage
      .resizable()
      .frame(width: 50, height: 50)
      .rotation3DEffect(.degrees(fishOrientedDegree), axis: (x: 0, y: 1, z: 0))
      .offset(offset)
      .onAppear { swim() }
  }
}

struct MonthStateView: View {
  let startPoints: [CGSize] = {
    var points = [CGSize]()
    (0..<10).forEach { _ in
      points.append(CGSize(width: Int.random(in: -300...300), height: Int.random(in: -200...200)))
    }
    return points
  }()
  let endPoints: [CGSize] = {
    var points = [CGSize]()
    (0..<10).forEach { _ in
      points.append(CGSize(width: Int.random(in: -300...300), height: Int.random(in: -200...200)))
    }
    return points
  }()
  
  var body: some View {
    ZStack {
      Color.blue.opacity(0.5)
      ForEach(0..<10, id: \.self) { i in
        FishView(startPoint: startPoints[i], endPoint: endPoints[i], fishImage: .assetImage(.yellowFish))
      }
    }
  }
}

struct MonthStateView_Previews: PreviewProvider {
  static var previews: some View {
    MonthStateView()
      .previewLayout(.fixed(width: 300, height: 300))
  }
}
