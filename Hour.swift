//
//  Hour.swift
//  valeu-of-time
//
//  Created by Frederico Westphalen Mendes Machado on 21/04/22.
//

import SwiftUI

struct Hour: View {
    private var scale: Scale {
        .init(
            innerStepCount: 9,
            steps: [
                "0", "100K", "200K", "300K", "400K", "500K", "600K", "700K", "800K", "900K", "1M", "1.1M", "1.2M", "1.3M"
            ])
    }
    
    private var chart: Chart {
        Chart(bars:
            [
                .init(
                    percentage: 0.2,
                    color: .red,
                    name: Text("Felled trees")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white),
                    subtitle:
                        Text("86.400\n")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                        +
                        Text("thousand")
                        .font(.system(size: 20, weight: .regular))
                        .foregroundColor(.white),
                    time: Text("Second")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.gray),
                    unitys: Text("3.600 seconds")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.gray)
                ),
                .init(
                    percentage: 3.2,
                    color: .red,
                    name: Text("Cost of wasted\n water in US$")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white),
                    subtitle:
                        Text("1.38\n")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                        +
                        Text("million")
                        .font(.system(size: 20, weight: .regular))
                        .foregroundColor(.white),
                    time: Text("Minute")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.gray),
                    unitys: Text("60 minutes")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.gray)
                ),
                .init(
                    percentage: 0.007,
                    color: .red,
                    name: Text("New vehicles\n produced")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white),
                    subtitle:
                        Text("256\n")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                        +
                        Text("vehicles")
                        .font(.system(size: 20, weight: .regular))
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
                    TitleThreeView(firstPart: Text("What is the \nvalue of "), secondPart: Text("one \nhour?"))
                    
                    Text("256 new vehicles was\nproduced in Brazil per\nhour in 2021, increasing\nthe number of vehicles\nin cities.")
                        .font(.system(size: 24, weight: .regular, design: .default))
                        .foregroundColor(Color.white)
                        .padding([.top], 20)
                    Text("Source: Anfavea - Associação\nNacional de Fabricantes de\nVeículos Automotores (2022)")
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
                            .padding([.trailing],285)
                            .padding([.bottom], 80)
                    }
                }
            }
            
        }
    }
}
