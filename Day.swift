//
//  Day.swift
//  valeu-of-time
//
//  Created by Frederico Westphalen Mendes Machado on 21/04/22.
//

import SwiftUI

struct Day: View {
    private var scale: Scale {
        .init(
            innerStepCount: 9,
            steps: [
                "0", "500K", "1M", "1,5M", "2M", "2,5M", "3M", "3,5M", "4M", "4,5M", "5M", "5,5M", "6M", "6,5M", "7M"
            ])
    }
    
    private var chart: Chart {
        Chart(bars:
            [
                .init(
                    percentage: 1.3,
                    color: .red,
                    name: Text("Felled trees")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white),
                    subtitle:
                        Text("2,07\n")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                        +
                        Text("million")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(.white),
                    time: Text("Second")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.gray),
                    unitys: Text("86.400 sec.")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.gray)
                ),
                .init(
                    percentage: 4.6,
                    color: .red,
                    name: Text("Cost of\nwasted water\nin US$")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white),
                    subtitle:
                        Text("7,10\n")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                        +
                        Text("million")
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
                    percentage: 0.08,
                    color: .red,
                    name: Text("Cattle\nand swine\nslaughtered")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white),
                    subtitle:
                        Text("223\n")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                        +
                        Text("thousand")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(.white),
                    time: Text("Hour")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.gray),
                    unitys: Text("24 hours")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.gray)
                ),
                .init(
                    percentage: 1.9,
                    color: .red,
                    name: Text("Barrels\nof oil\nextracted")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white),
                    subtitle:
                        Text("2,94\n")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                        +
                        Text("million")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(.white),
                    time: Text("Day")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.gray),
                    unitys: Text("1 day")
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
                    TitleThreeView(firstPart: Text("What is the \nvalue of "), secondPart: Text("one \nday?"))
                    
                    Text("Every day, 2.94 million\nbarrels of oil were\nextracted in Brazil in 2021.")
                        .font(.system(size: 24, weight: .regular, design: .default))
                        .foregroundColor(Color.white)
                        .padding([.top], 20)
                    Text("Source: ANP - Agência Nacional do\nPetróleo, Gás Natural e\nBiocombustíveis (2021)")
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
