//
//  ViewMestre.swift
//  valeu-of-time
//
//  Created by Frederico Westphalen Mendes Machado on 21/04/22.
//

import SwiftUI

struct ViewMestre: View {
    var body: some View {

        
        VStack{
            
            NavigationView {
                
                VStack {
                    
                    Home()
                }
                .background(Color.black)
                
            }
        
        .navigationViewStyle(.stack)
    }
    }
        
}
struct ViewMestre_Previews: PreviewProvider {
    static var previews: some View {
        ViewMestre()
    }
}
