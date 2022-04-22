//
//  ViewMestre.swift
//  valeu-of-time
//
//  Created by Frederico Westphalen Mendes Machado on 21/04/22.
//

import SwiftUI

struct ViewMestre: View {
    var body: some View {
        TabView {
            Home()
            Intro()
            IntroSecond()
            Second()
            IntroMinute()
            Minute()
            IntroHour()
            Hour()
            IntroDay()
            Day()
         //   IntroMonth()
         //   Month()
         //   IntroYear()
         //   Year()
         // CountriesData()
         // IntroEightYears()
         // EightYears()
         // End()
            
        }
        .tabViewStyle(.page)
        .background(Color.black)
    }
}

struct ViewMestre_Previews: PreviewProvider {
    static var previews: some View {
        ViewMestre()
    }
}
