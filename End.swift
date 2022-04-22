//
//  End.swift
//  valeu-of-time
//
//  Created by Frederico Westphalen Mendes Machado on 21/04/22.
//

import SwiftUI

struct End: View {
    var body: some View {
        VStack (alignment: .center) {
          Text("And now, what is the value of time for you?")
                .font(.system(size: 100.0, weight: .bold, design: .default))
                //.background(Color.red)
                .foregroundColor(Color.white)
                //.frame(width: 527)
                .padding([.top], 30)
            Spacer()
            
            Text("2812 days 12:57:20 to 2030")
                  .font(.system(size: 70.0, weight: .bold, design: .default))
                  //.background(Color.red)
                  .foregroundColor(Color.white)
                  //.frame(width: 527)
                  .padding([.leading], 100)
                  .padding([.top], 100)
            
            Spacer()
            
            Button(action: {
                print ("Clicked")
            }) {
                Text ("Discover")
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
