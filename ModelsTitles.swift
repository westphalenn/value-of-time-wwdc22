//
//  ModelTitleGraphs.swift
//  valeu-of-time
//
//  Created by Frederico Westphalen Mendes Machado on 21/04/22.
//

import SwiftUI


struct TitleOneView: View {
    let firstPart: Text
    let secondPart: Text
    
    var body: some View {
        VStack(alignment: .leading) {
            firstPart
                .foregroundColor(Color.gray)
             +
            secondPart
                .foregroundColor(Color.white)
        }
        .font(.system(size: 130.0, weight: .bold, design: .default))
        .padding([.top],100)
        .padding([.leading], 70)
    }
}


struct TitleTwoView: View {
    let firstPart: Text
    let secondPart: Text
    
    var body: some View {
        VStack(alignment: .leading) {
            firstPart
                .foregroundColor(Color.gray)
             +
            secondPart
                .foregroundColor(Color.white)
        }
        .font(.system(size: 70, weight: .bold, design: .default))
        .padding([.top],200)
        .padding([.leading], 70)
    }
}


struct TitleThreeView: View {
    let firstPart: Text
    let secondPart: Text
    
    var body: some View {
        VStack(alignment: .leading) {
            firstPart
                .foregroundColor(Color.gray)
             +
            secondPart
                .foregroundColor(Color.white)
        }
        .font(.system(size: 44, weight: .bold, design: .default))
        .padding([.top],100)
    }
}
