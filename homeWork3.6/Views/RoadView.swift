//
//  RoadView.swift
//  homeWork3.6
//
//  Created by Александра Мельникова on 14.08.2021.
//

import SwiftUI

struct RoadView: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width,
                           geometry.size.height
            )
            let nearLine = size * 0.1
            let farLine = size * 0.9
            
            Path { path in
                path.move(to: CGPoint(x: size / 1.3 + nearLine,
                                      y: nearLine))
                path.addLine(to: CGPoint(x: farLine + 10,
                                         y: farLine + 300))
                path.addLine(to: CGPoint(x: nearLine - 10,
                                         y: farLine + 300))
                path.addLine(to: CGPoint(x: size / 4 - nearLine,
                                         y: nearLine))
            }
            .fill(Color(red: 0.4,
                        green: 0.4,
                        blue: 0.4)
            )
            
            Path { path in
                let middle = size / 2
                
                path.move(to: CGPoint(x: middle,
                                      y: farLine + 300))
                path.addLine(to: CGPoint(x: middle,
                                         y: nearLine))
            }
            .stroke(
                Color.white,
                style: StrokeStyle(
                    lineWidth: 3,
                    dash: [geometry.size.height / nearLine]
                )
            )
        }
        .frame(width: width,
               height: height)
    }
}

struct RoadView_Previews: PreviewProvider {
    static var previews: some View {
        RoadView(width: 200,
                 height: 500)
    }
}
