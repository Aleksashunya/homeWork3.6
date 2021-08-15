//
//  MainCarView.swift
//  homeWork3.6
//
//  Created by Александра Мельникова on 15.08.2021.
//

import SwiftUI

struct MainCarView: View {
    var body: some View {
        Image(systemName: "bolt.car.fill")
            .resizable()
            .foregroundColor(.red)
            .frame(width: 40, height: 40)
            
    }
}

struct MainCarView_Previews: PreviewProvider {
    static var previews: some View {
        MainCarView()
    }
}
