//
//  8Years.swift
//  valeu-of-time
//
//  Created by Frederico Westphalen Mendes Machado on 21/04/22.
//

import SwiftUI

struct EightYears: View {
   
    var body: some View {
        
        VStack (alignment: .leading) {
            
            ZStack {
                
                Color.black
                    .ignoresSafeArea()
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    VStack (alignment: .leading){
                        
                        VStack(alignment: .leading) {
                            TitleThreeView(firstPart: Text("What is the \nvalue of "), secondPart: Text("eight \nyears?"))
                            
                            Text("It is the time we have until\n2030 to reduce these and other\nnumbers, with the objective\nof mitigating greenhouse\ngas emissions.\n\nIf this is not done,\nthe planet will warm up\nby 3,20ºC degrees by the\nend of the century, with\nirreversible consequences.")
                                .font(.system(size: 24, weight: .regular, design: .default))
                                .foregroundColor(Color.white)
                                .padding([.top], 20)
                            Text("Source: IPCC Sixth Assessment\nReport (AR6-WG2)")
                                .font(.system(size: 14, weight: .regular, design: .default))
                                .foregroundColor(Color.gray)
                                .padding([.top], 20)
                            Text("🌎\n🔥")
                                .font(.system(size: 100, weight: .regular, design: .default))
                                .foregroundColor(Color.white)
                                .padding([.top], 100)
                            Spacer()
                            
                        }
                        
                        NavigationLink (destination:End()) {
                            Text ("Continue")
                                .padding([.trailing, .leading], 40)
                                .padding([.top, .bottom], 15)
                                .font(.system(size: 20, weight: .bold, design: .default))
                                .foregroundColor(.white)
                                .background(.red)
                                .cornerRadius(40)
                                .padding([.trailing],380)
                                .padding([.bottom], 80)
                        }
                    }
                }
                
                .navigationBarHidden(true)
            }
        }
    }
    
}


struct EightYears_Previews: PreviewProvider {
    static var previews: some View {
        EightYears()
    }
}
