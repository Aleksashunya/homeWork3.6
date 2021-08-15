//
//  CircleView.swift
//  homeWork3.6
//
//  Created by Александра Мельникова on 15.08.2021.
//

import SwiftUI

struct CircleView: View {
    var body: some View {
        
        GeometryReader { geometry in
            Circle()
                .fill(Color(.link))
            
            Path {path in
                path.move(to: CGPoint(x: 100, y: 100))
                path.addLine(to: CGPoint(x: 100, y: 0))
            }
            .stroke(
                Color.black,
                style: StrokeStyle(
                    lineWidth: 8
                )
            )
            
            Path {path in
                path.move(to: CGPoint(x: 100, y: 100))
                path.addLine(to: CGPoint(x: 30, y: 30))
            }
            .stroke(
                Color.pink,
                style: StrokeStyle(
                    lineWidth: 2
                )
            )
            
            Path {path in
                path.move(to: CGPoint(x: 100, y: 100))
                path.addLine(to: CGPoint(x: 170, y: 30))
            }
            .stroke(
                Color.pink,
                style: StrokeStyle(
                    lineWidth: 2
                )
            )
            
            Path {path in
                path.move(to: CGPoint(x: 100, y: 100))
                path.addLine(to: CGPoint(x: 170, y: 170))
            }
            .stroke(
                Color.pink,
                style: StrokeStyle(
                    lineWidth: 2
                )
            )
            
            Path {path in
                path.move(to: CGPoint(x: 100, y: 100))
                path.addLine(to: CGPoint(x: 30, y: 170))
            }
            .stroke(
                Color.pink,
                style: StrokeStyle(
                    lineWidth: 2
                )
            )
            
            Path {path in
                path.move(to: CGPoint(x: 100, y: 100))
                path.addLine(to: CGPoint(x: 0, y: 100))
            }
            .stroke(
                Color.pink,
                style: StrokeStyle(
                    lineWidth: 2
                )
            )
            
            Path {path in
                path.move(to: CGPoint(x: 100, y: 100))
                path.addLine(to: CGPoint(x: 200, y: 100))
            }
            .stroke(
                Color.pink,
                style: StrokeStyle(
                    lineWidth: 2
                )
            )
            
            Path {path in
                path.move(to: CGPoint(x: 100, y: 100))
                path.addLine(to: CGPoint(x: 100, y: 200))
            }
            .stroke(
                Color.pink,
                style: StrokeStyle(
                    lineWidth: 2
                )
            )
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: 100, y: 100),
                    radius: 100,
                    startAngle: .degrees(0),
                    endAngle: .degrees(360),
                    clockwise: true
                )
            }.stroke(Color.white, lineWidth: 9)
            
        }.frame(width: 200, height: 200)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
