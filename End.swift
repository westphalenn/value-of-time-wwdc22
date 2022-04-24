//
//  End.swift
//  valeu-of-time
//
//  Created by Frederico Westphalen Mendes Machado on 21/04/22.
//

import SwiftUI

struct End: View {
    
    var body: some View {
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack (alignment: .leading) {
                
                HStack {
                    Spacer().frame(width: 20)
                    
                    TitleOneView(firstPart: Text ("And now, \nwhat is the"), secondPart: Text(" value of\ntime for you?"))
                    Spacer()
                    
                }
                Spacer()
                
                                
                HStack {
                    Spacer()
                    
                    NavigationLink(destination: Home()) {
                        
                        Text ("Restart")
                            .padding([.trailing, .leading], 40)
                            .padding([.top, .bottom], 15)
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .background(.red)
                            .cornerRadius(40)
                            .padding([.trailing],400)
                            .padding([.bottom], 80)
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}
