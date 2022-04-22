//
//  IntroHour.swift
//  valeu-of-time
//
//  Created by Frederico Westphalen Mendes Machado on 21/04/22.
//

import SwiftUI

struct IntroHour: View {
    var body: some View {
        
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack (alignment: .center) {
                Text("01:00:00")
                    .font(.system(size: 70.0, weight: .bold, design: .default))
                //.background(Color.red)
                    .foregroundColor(Color.white)
                //.frame(width: 527)
                    .padding([.leading], 380)
                    .padding([.top], 600)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    NavigationLink (destination:Hour()) {
                        Text ("See value")
                            .padding([.trailing, .leading], 40)
                            .padding([.top, .bottom], 15)
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .background(.red)
                            .cornerRadius(40)
                            .padding([.trailing],300)
                        //.padding([.top], 100)
                            .padding([.bottom], 80)
                    }
                }
            }
        }
        .navigationBarHidden(true)
    }
}
