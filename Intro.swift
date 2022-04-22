//
//  SwiftUIView.swift
//  valeu-of-time
//
//  Created by Frederico Westphalen Mendes Machado on 21/04/22.
//

import SwiftUI

struct Intro: View {
    var body: some View {
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack (alignment: .leading) {
                HStack {
                    Spacer().frame(width: 20)
                  Text("In a competion, 1 second is very\nimportant for an athlete.")
                        .font(.system(size: 24, weight: .regular, design: .default))
                        .foregroundColor(Color.gray)
                        .padding([.top], 100)
                        .padding([.leading], 70)
                    Spacer()
                }
                
                HStack {
                    Spacer().frame(width: 20)
                  Text("1 minute of late can be enough for\nyou to miss a bus, train or plane.")
                        .font(.system(size: 24, weight: .regular, design: .default))
                        .foregroundColor(Color.gray)
                        .padding([.top], 20)
                        .padding([.leading], 70)
                    Spacer()
                }
                
                HStack {
                    Spacer().frame(width: 20)
                  Text("Working from home, 1 hour less\ncommute can mean more rest\ntime or a quiet breakfast.")
                        .font(.system(size: 24, weight: .regular, design: .default))
                        .foregroundColor(Color.gray)
                        .padding([.top], 20)
                        .padding([.leading], 70)
                    Spacer()
                }
                
                VStack (alignment: .leading) {
                    
                    HStack {
                        Spacer().frame(width: 20)
                      Text("Each person assigns their own\nvalue to time, and enjoys it in\ntheir own way")
                            .font(.system(size: 28, weight: .bold, design: .default))
                            .foregroundColor(Color.white)
                            .padding([.top], 100)
                            .padding([.leading], 70)
                        Spacer()
                    }
                }
                
                VStack (alignment: .leading) {
                    
                    HStack {
                        Spacer().frame(width: 20)
                        
                        TitleTwoView(firstPart: Text("I invite you to assign\n"), secondPart: Text("new values to time"))
                        Spacer()
                    }
                }
                
                HStack {
                    Spacer()
                    
                    NavigationLink (destination:IntroSecond()) {
                        Text ("Let's go")
                            .padding([.trailing, .leading], 40)
                            .padding([.top, .bottom], 15)
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .background(.red)
                            .cornerRadius(40)
                            .padding([.trailing],410)
                            .padding([.top], 90)
                            //.padding([.bottom], 80)
                    }
                }
                
            }
        .navigationBarHidden(true)
        }
    }
}

struct Intro_Previews: PreviewProvider {
    static var previews: some View {
        Intro()
    }
}
