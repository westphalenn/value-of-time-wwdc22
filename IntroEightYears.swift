//
//  Intro8Years.swift
//  valeu-of-time
//
//  Created by Frederico Westphalen Mendes Machado on 21/04/22.
//

import SwiftUI

struct IntroEightYears: View {
    
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
                            TitleDaysView (firstPart: Text("8"), secondPart: Text(" Years"))
                            
                            Spacer()
                        }
                        
                        NavigationLink (destination:EightYears()) {
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

struct IntroEightYears_Previews: PreviewProvider {
    static var previews: some View {
        IntroEightYears()
    }
}




//Intro dos tempos antiga


/*    var body: some View {
        VStack (alignment: .center) {
          Text("8 years")
                .font(.system(size: 70.0, weight: .bold, design: .default))
                //.background(Color.red)
                .foregroundColor(Color.white)
                //.frame(width: 527)
                .padding([.leading], 300)
                .padding([.top], 600)
            
            Spacer()
            
            HStack {
                Spacer()
                
                Button(action: {
                    print ("Clicked")
                }) {
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
}*/
