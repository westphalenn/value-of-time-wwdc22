//
//  IntroYear.swift
//  valeu-of-time
//
//  Created by Frederico Westphalen Mendes Machado on 21/04/22.
//

import SwiftUI

struct IntroYear: View {
    
    var body: some View {
        
        VStack (alignment: .leading) {
            
            ZStack {
                
                Color.black
                    .ignoresSafeArea()
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        
                        Spacer()
                        VStack (alignment: .leading) {
                            TitleDaysView (firstPart: Text("365"), secondPart: Text(" Days"))
                            
                            Spacer()
                        }
                        
                        NavigationLink (destination:Year()) {
                            Text ("See value")
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
}
