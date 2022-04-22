//
//  Day.swift
//  valeu-of-time
//
//  Created by Frederico Westphalen Mendes Machado on 21/04/22.
//

import SwiftUI

struct Day: View {
    var body: some View {
        VStack (alignment: .center) {
          
            Text("título")
                  .font(.system(size: 60.0, weight: .bold, design: .default))
                  //.background(Color.red)
                  .foregroundColor(Color.white)
                  .frame(width: 600)
                  .padding([.top], 30)
            Spacer()
            
            Text("body")
                .font(.system(size: 24, weight: .regular, design: .default))
                //.background(Color.red)
                .foregroundColor(Color.white)
                .frame(width: 400)
                .padding([.top], 30)
            Spacer()
            
            Text("legenda")
                  .font(.system(size: 30.0, weight: .bold, design: .default))
                  //.background(Color.red)
                  .foregroundColor(Color.white)
                  .frame(width: 400)
                  .padding([.top], 30)
            
            
            Button(action: {
                print ("Clicked")
            }) {
                Text ("Let's go")
                    .padding()
                    .font (.headline)
                    .foregroundColor(.white)
                    .background(.gray)
                    .cornerRadius(40)
                    .padding([.leading], 170)
                    .padding([.bottom], 80)
            }
            
        }
    }
}
