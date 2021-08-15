//
//  ContentView.swift
//  homeWork3.6
//
//  Created by Александра Мельникова on 14.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView {
            RoadGameView()
                .tabItem {
                    Image(systemName: "car.fill")
                        .resizable()
                    Text("Игра на обгон")
                }
            
            LotteryGameView()
                .tabItem {
                    Image(systemName: "questionmark.circle")
                        .resizable()
                    Text("Узнай ответ")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
