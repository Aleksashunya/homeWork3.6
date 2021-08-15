//
//  AFiewCars.swift
//  homeWork3.6
//
//  Created by Александра Мельникова on 16.08.2021.
//

import SwiftUI

struct AFiewCars: View {
    
    @Binding var isAnimating: Bool
    
    var body: some View {
        
        VStack {
            OneCarView()
                .offset(x: -70,
                        y: isAnimating ? 300 : 0)
            Spacer()
            
            OneCarView()
                .offset(x: 30,
                        y: isAnimating ? 0 : 300)
            Spacer()
            
            OneCarView()
                .offset(x: -70,
                        y: isAnimating ? 300 : 0)
            Spacer()
            
            OneCarView()
                .offset(x: 30,
                        y: isAnimating ? 0 : 300)
            Spacer()
            
            OneCarView()
                .offset(x: -70,
                        y: isAnimating ? 300 : 0)
        }
    }
}

struct AFiewCars_Previews: PreviewProvider {
    static var previews: some View {
        AFiewCars(isAnimating: .constant(false))
    }
}
