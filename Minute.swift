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
                        percentage: 0.3,
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
                        percentage: 0.95,
                        color: .red,
                        name: Text("Cost water")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.white),
                        subtitle:
                            Text("4,935\n")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                        +
                        Text("thousand\nUS$")
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
            
            ZStack {
                
                Color.black
                    .ignoresSafeArea()
                
                HStack {
                    ChartView(scale: scale, chart: chart, height: 205)
                        .padding([.bottom],50)
                    Spacer()
                }
                Spacer()
                
                HStack {
                    Spacer()
                    
                    VStack (alignment: .leading) {
                       
                        VStack (alignment: .leading) {
                        
                        
                        TitleThreeView(firstPart: Text("What is the \nvalue of "), secondPart: Text("one \nminute?"))
                        
                        Text("Wasted drinking water in\nBrazil generates a loss of\nUS$ 4,935 per minute\nin 2018. The causes are\ndiverse, including leaks\nand fraud.")
                            .font(.system(size: 24, weight: .regular, design: .default))
                            .foregroundColor(Color.white)
                            .padding([.top], 20)
                        Text("Source: Instituto Trata Brasil (2021)")
                            .font(.system(size: 14, weight: .regular, design: .default))
                            .foregroundColor(Color.gray)
                            .padding([.top], 20)
                        Spacer()
                    }
                        
                
                    NavigationLink (destination:IntroHour())  {
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
                .navigationBarHidden(true)
            }
        }
    }
}
