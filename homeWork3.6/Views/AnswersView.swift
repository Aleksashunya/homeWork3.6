//
//  AnswersView.swift
//  homeWork3.6
//
//  Created by Александра Мельникова on 15.08.2021.
//

import SwiftUI

struct AnswersView: View {
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    Rectangle()
                        .fill(Color.green)
                        .opacity(0.8)
                    Text("Да")
                        .font(.title)
                }
                
                ZStack {
                    Rectangle()
                        .fill(Color.yellow)
                        .opacity(0.8)
                    Text("Вряд ли")
                        .font(.title)
                }
            }
            
            HStack {
                ZStack {
                    Rectangle()
                        .fill(Color.red)
                        .opacity(0.8)
                    Text("Точно нет")
                        .font(.title)
                }
                
                ZStack {
                    Rectangle()
                        .fill(Color.orange)
                        .opacity(0.8)
                    Text("Может быть")
                        .font(.title)
                }
            }
        }
    }
}

struct AnswersView_Previews: PreviewProvider {
    static var previews: some View {
        AnswersView()
    }
}
