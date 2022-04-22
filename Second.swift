//
//  Second.swift
//  valeu-of-time
//
//  Created by Frederico Westphalen Mendes Machado on 21/04/22.
//

import SwiftUI

struct Second: View {
    private var scale: Scale {
        .init(
            innerStepCount: 9,
            steps: [
                "0", "10", "20", "30"
            ])
    }
    
    private var chart: Chart {
        Chart(bars: [
            .init(
                percentage: 0.6,
                color: .red,
                name: Text("Felled trees")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white),
                subtitle:
                    Text("24\n")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.white)
                    +
                    Text("trees")
                    .font(.system(size: 24, weight: .regular))
                    .foregroundColor(.white),
                time: Text("Second")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.gray),
                unitys: Text("1 second")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(.gray)
            )
        ])
    }
    
    var body: some View {
        
        VStack (alignment: .leading) {
            
            HStack {
                VStack {
                    Spacer()
                    ChartView(scale: scale, chart: chart, height: 205)
                        .padding([.bottom],50)
                }
             //   Spacer()
                Spacer()
                VStack(alignment: .leading) {
                    //Spacer()
                    TitleThreeView(firstPart: Text("What is the \nvalue of "), secondPart: Text("one \nsecond?"))
                    
                    Text("In 1 second 24 trees was\nfelled in Brazil in 2020.")
                        .font(.system(size: 24, weight: .regular, design: .default))
                        .foregroundColor(Color.white)
                        .padding([.top], 20)
                    Text("Source: Map Biomas Brasil (2021)")
                        .font(.system(size: 14, weight: .regular, design: .default))
                        .foregroundColor(Color.gray)
                        .padding([.top], 20)
                    Spacer()
                }
                Spacer()
            }
            
            
            VStack (alignment: .leading) {
                
                HStack {
                    Spacer().frame(width: 450)
                    Spacer()
                }
                
                VStack (alignment: .leading) {
                    
                    HStack {
                        Spacer().frame(width: 450)
                        Spacer()
                    }
                }
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        print ("Clicked")
                    }) {
                        Text ("Next")
                            .padding([.trailing, .leading], 40)
                            .padding([.top, .bottom], 15)
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .background(.red)
                            .cornerRadius(40)
                            .padding([.trailing],420)
                            .padding([.bottom], 80)
                    }
                }
            }
            
        }
    }
}


