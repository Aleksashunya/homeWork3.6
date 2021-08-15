//
//  RoadGameView.swift
//  homeWork3.6
//
//  Created by Александра Мельникова on 15.08.2021.
//

import SwiftUI

struct RoadGameView: View {
    @State private var isAnimating = false
    @State private var mainCarShifted = false
    @State private var start = false
    @State private var mainCarShift: CGFloat = 30
    
    var foreverAnimation: Animation {
        if isAnimating {
            return Animation.linear(duration: 1)
                .repeatForever(autoreverses: false)
        } else {
            return Animation.linear(duration: 0.0)
        }
    }
    
    var body: some View {
        ZStack {
            Color(.cyan)
                .ignoresSafeArea()
                .opacity(0.4)
            
            VStack {
                Text("Постарайся не врезаться")
                    .font(.title2)
                
                HStack {
                    TreeView()
                        .rotationEffect(.degrees(isAnimating ? 0 : 360))
                    TreeView()
                        .rotationEffect(.degrees(isAnimating ? 0 : -180))
                    TreeView()
                        .rotationEffect(.degrees(isAnimating ? 0 : 360))
                }
                .animation(self.foreverAnimation)
                
                ZStack {
                    RoadView(width: 200, height: 450)
                    
                    VStack {
                        AFiewCars(isAnimating: $isAnimating)
                        
                        MainCarView()
                            .offset(x: mainCarShift,
                                    y: -100)
                            .animation(.linear)
                    }
                }
                .animation(self.foreverAnimation)
                .onDisappear(perform: {
                    isAnimating = false
                    start = false
                })
                
                Button(action: {
                    withAnimation(.linear(duration: 0.3)) {
                        mainCarShift = mainCarShifted ? -30 : 30
                    }
                    mainCarShifted.toggle()
                },
                label: {
                    Text("\(start ? "Перестроиться" : "Ожидание...")")
                }
                ).frame(width: 150,
                        height: 30)
                .animation(.easeOut)
                .background(Color.blue)
                .cornerRadius(20)
                .accentColor(.white)
                .disabled(!start)
                
                Button(action: {
                    self.isAnimating.toggle()
                    start.toggle()
                },
                label: {
                    Text("\(start ? "Стоп" : "Начать игру")")
                }
                )
                .frame(width: 150,
                       height: 30)
                .animation(.easeOut)
                .background(Color.green)
                .cornerRadius(20)
                .accentColor(.white)
            }
        }
    }
}

struct RoadGameView_Previews: PreviewProvider {
    static var previews: some View {
        RoadGameView()
    }
}
