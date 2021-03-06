//
//  Year.swift
//  valeu-of-time
//
//  Created by Frederico Westphalen Mendes Machado on 21/04/22.
//

import SwiftUI

struct Year: View {
    private var scale: Scale {
        .init(
            innerStepCount: 9,
            steps: [
                "0", "100M", "200M", "300M", "400M", "500M", "600M", "700M", "800M", "900M", "1B", "1,1B", "1,2B", "1,3B", "1,4B", "1,5B", "1,6B", "1,7B", "1,8B", "1,9B", "2B", "2,1B", "2,2B", "2,3B", "2,4B", "2,5B"
                    ])
    }
    
    private var chart: Chart {
        Chart(bars:
                [
                    .init(
                        percentage: 1.45,
                        color: .red,
                        name: Text("Felled trees")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.white),
                        subtitle:
                            Text("746,4\n")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                        +
                        Text("million")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.white),
                        time: Text("Second")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.gray),
                        unitys: Text("31.1M of sec.")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.gray)
                    ),
                    .init(
                        percentage: 4.85,
                        color: .red,
                        name: Text("Cost water")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.white),
                        subtitle:
                            Text("2,59 B")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white),
                       // +
                        //Text("billion")
                            //  .font(.system(size: 16, weight: .regular))
                            //.foregroundColor(.white),
                        time: Text("Minute")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.gray),
                        unitys: Text("518.4K of min.")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.gray)
                    ),
                    .init(
                        percentage: 0.15,
                        color: .red,
                        name: Text("Cattle & swine")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.white),
                        subtitle:
                            Text("80,5\n")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                        +
                        Text("million")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.white),
                        time: Text("Hour")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.gray),
                        unitys: Text("8.640 hours")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.gray)
                    ),
                    .init(
                        percentage: 1.95,
                        color: .red,
                        name: Text("Barrels of oil")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.white),
                        subtitle:
                            Text("1,05\n")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                        +
                        Text("billion")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.white),
                        time: Text("Day")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.gray),
                        unitys: Text("365 days")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.gray)
                    ),
                    .init(
                        percentage: 0.13,
                        color: .red,
                        name: Text("Solid waste")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.white),
                        subtitle:
                            Text("79,2\n")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                        +
                        Text("million\ntons")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.white),
                        time: Text("Month")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.gray),
                        unitys: Text("12 months")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.gray)
                    ),
                    .init(
                        percentage: 4.1,
                        color: .red,
                        name: Text("greenhouse gases")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.white),
                        subtitle:
                            Text("2,16\n")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                        +
                        Text("billion\ntons")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.white),
                        time: Text("Year")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.gray),
                        unitys: Text("1 year")
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
                    
                    VStack (alignment: .leading){
                        
                        VStack(alignment: .leading) {
                            TitleThreeView(firstPart: Text("What is the \nvalue of "), secondPart: Text("one \nyear?"))
                            
                            Text("2.16 billion tons of\ngreenhouse gases were\nemitted in Brazil in 2020.")
                                .font(.system(size: 24, weight: .regular, design: .default))
                                .foregroundColor(Color.white)
                                .padding([.top], 20)
                            Text("Source: Instituto de Energia e\nMeio Ambiente (2021)")
                                .font(.system(size: 14, weight: .regular, design: .default))
                                .foregroundColor(Color.gray)
                                .padding([.top], 20)
                            Spacer()
                            
                        }
                        
                        NavigationLink (destination:CountriesData()) {
                            Text ("Next")
                                .padding([.trailing, .leading], 40)
                                .padding([.top, .bottom], 15)
                                .font(.system(size: 20, weight: .bold, design: .default))
                                .foregroundColor(.white)
                                .background(.red)
                                .cornerRadius(40)
                                .padding([.trailing],420)
                                .padding([.bottom], 100)
                        }
                    }
                }
                
                .navigationBarHidden(true)
            }
        }
    }
    
}
