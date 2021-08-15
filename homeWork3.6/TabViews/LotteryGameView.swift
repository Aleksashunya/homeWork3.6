//
//  LotteryGameView.swift
//  homeWork3.6
//
//  Created by Александра Мельникова on 15.08.2021.
//

import SwiftUI

struct LotteryGameView: View {
    
    @State private var animation = false
    @State private var degree = 0.0
    
    var foreverAnimation: Animation {
        return Animation.easeInOut(duration: 2)
    }
    
    var body: some View {
        VStack {
            Text("Узнай ответ на свой вопрос")
                .font(.title2)
            
            ZStack {
                AnswersView()
                
                CircleView()
                    .rotationEffect(.degrees(animation ? Double.random(in: -5000...5000) : Double.random(in: 0...360)))
                    .animation(self.foreverAnimation)
                
                VStack {
                    
                    Spacer()
                    
                    Button(action: {
                        animation.toggle()
                    }, label: {
                        Text("Узнать ответ")
                    })
                    .frame(width: 150,
                           height: 40)
                    .animation(.easeOut)
                    .background(Color.blue)
                    .cornerRadius(20)
                    .accentColor(.white)
                    .padding()
                }
            }
        }
    }
}

struct LotteryGameView_Previews: PreviewProvider {
    static var previews: some View {
        LotteryGameView()
    }
}
