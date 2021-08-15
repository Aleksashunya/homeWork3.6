//
//  OneCarView.swift
//  homeWork3.6
//
//  Created by Александра Мельникова on 15.08.2021.
//

import SwiftUI

struct OneCarView: View {
    
    var body: some View {
        
        Image(systemName: "car.fill")
            .resizable()
            .frame(width: 40,
                   height: 40)
            .foregroundColor(.yellow)
            .offset(x: 30,
                    y: 10)
    }
}

struct OneCarView_Previews: PreviewProvider {
    static var previews: some View {
        OneCarView()
    }
}
