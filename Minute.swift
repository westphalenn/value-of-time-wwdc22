//
//  Minute.swift
//  valeu-of-time
//
//  Created by Frederico Westphalen Mendes Machado on 21/04/22.
//

import SwiftUI

struct Minute: View {
    private var scale: Scale {
        .init(
            innerStepCount: 9,
            steps: [
                "0", "1K", "2K", "3K", "4K", "5K"
            ])
    }
    
    private var chart: Chart {
        Chart(bars:
            [
                .init(
                    percentage: 0.4,
                    color: .red,
                    name: Text("Felled trees")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white),
                    subtitle:
                        Text("1,440\n")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                        +
                        Text("thousand")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(.white),
                    time: Text("Second")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.gray),
                    unitys: Text("60 seconds")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.gray)
                ),
                .init(
                    percentage: 1.2,
                    color: .red,
                    name: Text("Cost of\nwasted water\nin US$")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white),
                    subtitle:
                        Text("4,935\n")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                        +
                        Text("thousand")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(.white),
                    time: Text("Minute")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.gray),
                    unitys: Text("1 minute")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.gray)
                ),
            ]
        )
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
                    TitleThreeView(firstPart: Text("What is the \nvalue of "), secondPart: Text("one \nminute?"))
                    
                    Text("Wasted drinking water in \nBrazil generates a loss of\n US$ 4,935 per minute\n in 2018. The causes are\n diverse, including leaks\n and fraud.")
                        .font(.system(size: 24, weight: .regular, design: .default))
                        .foregroundColor(Color.white)
                        .padding([.top], 20)
                    Text("Source: Instituto Trata Brasil (2021)")
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
                            .padding([.trailing],360)
                            .padding([.bottom], 80)
                    }
                }
            }
            
        }
    }
}
