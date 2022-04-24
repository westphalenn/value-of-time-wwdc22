//
//  Hour.swift
//  value-of-time
//
//  Created by Frederico Westphalen Mendes Machado on 21/04/22.
//

import SwiftUI

struct Hour: View {
    private var scale: Scale {
        .init(
            innerStepCount: 9,
            steps: [
                "0", "20K", "40K", "60K", "80K", "100K", "120K", "140K", "160K", "180K", "200K", "220K", "240K", "260K", "280K", "300K"
            ])
    }
    
    private var chart: Chart {
        Chart(bars:
                [
                    .init(
                        percentage: 0.85,
                        color: .red,
                        name: Text("Felled trees")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.white),
                        subtitle:
                            Text("86,4\n")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                        +
                        Text("thousand")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.white),
                        time: Text("Second")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.gray),
                        unitys: Text("3.600 seconds")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.gray)
                    ),
                    .init(
                        percentage: 2.9,
                        color: .red,
                        name: Text("Cost water")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.white),
                        subtitle:
                            Text("296\n")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                        +
                        Text("thousand\nUS$")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.white),
                        time: Text("Minute")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.gray),
                        unitys: Text("60 minutes")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.gray)
                    ),
                    .init(
                        percentage: 0.1,
                        color: .red,
                        name: Text("Cattle & Swine")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.white),
                        subtitle:
                            Text("9,31\n")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                        +
                        Text("thousand")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.white),
                        time: Text("Hour")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.gray),
                        unitys: Text("1 hour")
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
                    
                    VStack(alignment: .leading) {
                        
                        VStack(alignment: .leading) {
                            TitleThreeView(firstPart: Text("What is the \nvalue of "), secondPart: Text("one \nhour?"))
                            
                            Text("9,318 thousand, is the\nsum of cattle and swine\nslaughtered per hour in\nBrazil in 2021.")
                                .font(.system(size: 24, weight: .regular, design: .default))
                                .foregroundColor(Color.white)
                                .padding([.top], 20)
                            Text("Source: Censo Agro IBGE (2022)")
                                .font(.system(size: 14, weight: .regular, design: .default))
                                .foregroundColor(Color.gray)
                                .padding([.top], 20)
                            Spacer()
                        }
                        
                        NavigationLink (destination:IntroDay()) {
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
