//
//  ProgressIndicator.swift
//  submission-capstone-project
//
//  Created by Rezki Pratama on 20/11/22.
//

import SwiftUI

public struct ProgressIndicator: View {
    public init(
      color: Color,
      size: CGFloat,
      lineWidth: CGFloat
    ) {
      self.color = color
      self.size = size
      self.lineWidth = lineWidth
    }
    @State  var degress = 0.0
    var color: Color
    var size: CGFloat
    var lineWidth: CGFloat
  
  public var body: some View {
        Circle()
            .trim(from: 0.0, to: 0.8)
            .stroke(color, lineWidth: lineWidth)
            .frame(width: size, height: size)
            .rotationEffect(Angle(degrees: degress))
            .onAppear{ self.start()}
    }
    
    public func start() {
        Timer.scheduledTimer(withTimeInterval: 0.02, repeats: true) { timer in
            withAnimation {
                self.degress += 10.0
            }
            if self.degress == 360.0 {
                self.degress = 0.0
            }
        }
    }
}

struct ProgressIndicator_Previews: PreviewProvider {
   static var previews: some View {
        ProgressIndicator(color: Color.gray, size: 50, lineWidth: 10.0)
    }
}
