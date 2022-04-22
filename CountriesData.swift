//
//  CountriesData.swift
//  valeu-of-time
//
//  Created by Frederico Westphalen Mendes Machado on 21/04/22.
//

import SwiftUI

struct CountriesData: View {
  
    private var scale: Scale {
        .init(
            innerStepCount: 9,
            steps: [
                "0", "50B", "100B", "150B", "200B", "250B", "300B", "350B", "400B", "450B", "500B", "550B"
                
            ])
    }
    
    private var chart: Chart {
        Chart(bars:
                [
                    .init(
                        percentage:2.0,
                        color: .red,
                        name: Text("United States")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.white),
                        subtitle:
                            Text("509\n")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                        +
                        Text("billion")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.white),
                        time: Text("CO2")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.gray),
                        unitys: Text("tons")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.gray)
                    ),
                    .init(
                        percentage: 4.6,
                        color: .red,
                        name: Text("China")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.white),
                        subtitle:
                            Text("284,4\n")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                        +
                        Text("billion")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.white),
                        time: Text("CO2")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.gray),
                        unitys: Text("tons")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.gray)
                    ),
                    .init(
                        percentage: 0.15,
                        color: .red,
                        name: Text("Russia")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.white),
                        subtitle:
                            Text("172,5\n")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                        +
                        Text("billion")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.white),
                        time: Text("CO2")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.gray),
                        unitys: Text("tons")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.gray)
                    ),
                    .init(
                        percentage: 1.9,
                        color: .red,
                        name: Text("Brazil")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.white),
                        subtitle:
                            Text("112,9\n")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                        +
                        Text("billion")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.white),
                        time: Text("CO2")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.gray),
                        unitys: Text("tons")
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
                            TitleThreeView(firstPart: Text("If the previous\ndata "), secondPart: Text("scare\nyou..."))
                            
                            Text("Know that Brazil isn\nonly the 4th country\nin the ranking of greenhouse\ngas emissions since 1850.")
                                .font(.system(size: 24, weight: .regular, design: .default))
                                .foregroundColor(Color.white)
                                .padding([.top], 20)
                            Text("Source: Carbon Brief (2021)")
                                .font(.system(size: 14, weight: .regular, design: .default))
                                .foregroundColor(Color.gray)
                                .padding([.top], 20)
                            Spacer()
                        }
                        
                        NavigationLink(destination: IntroEightYears()) {
                            Text ("Continue")
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

struct CountriesData_Previews: PreviewProvider {
    static var previews: some View {
        CountriesData()
    }
}
