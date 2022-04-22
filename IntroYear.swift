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




//Intro dos tempos antiga
    

   /* var body: some View {
        
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack (alignment: .center) {
                Text("365 days")
                    .font(.system(size: 70.0, weight: .bold, design: .default))
                //.background(Color.red)
                    .foregroundColor(Color.white)
                //.frame(width: 527)
                    .padding([.leading], 350)
                    .padding([.top], 600)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    NavigationLink (destination: Year()) {
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
            
            .navigationBarHidden(true)
            
        }
    }
}*/


