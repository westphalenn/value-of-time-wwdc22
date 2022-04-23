//
//  End.swift
//  valeu-of-time
//
//  Created by Frederico Westphalen Mendes Machado on 21/04/22.
//

import SwiftUI

struct End: View {


/*
    let date = NSDate()
    let calendar = NSCalendar.current
    let components = calendar.components (.calendarUnitHour | .calendarUnitMinute, fromDate: date)
    let hour = components.hour
    let minutes = components.minute
*/
    
    
    
/*
    enum Calendar.Component
    let myCalendar = Calendar(identifier: .gregorian)
    let ymd = myCalendar.dateComponents([.year, .month, .day], from: Date())
*/
    
    
    
/*
    @State var nowDate: Date = Date()
    let referenceDate: Date
    var timer: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
            self.nowDate = Date()
        }
    }
    
    func countDownString(from date: Date) -> String {
        let calendar = Calendar(identifier: .gregorian)
        let components = calendar
            .dateComponents([.day, .hour, .minute, .second],
                            from: nowDate,
                            to: referenceDate)
        return String(format: "%02dd:%02dh:%02dm:%02ds",
                      components.day ?? 00,
                      components.hour ?? 00,
                      components.minute ?? 00,
                      components.second ?? 00)
    }
*/
    
    
    var body: some View {
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack (alignment: .leading) {
                
                HStack {
                    Spacer().frame(width: 20)
                    
                    TitleOneView(firstPart: Text ("And now, \nwhat is the"), secondPart: Text(" value of\ntime for you?"))
                    Spacer()
                    
                }
                Spacer()
                
                HStack{
                    Spacer().frame(width: 20)
                    
                    TitleFinalTimer(firstPart: Text("2810 "), secondPart: Text("days "), thirdPart: Text("00:00:00"), fourthPart: Text(" to"), fifthPart: Text(" 2030"))
/*
                    Text(countDownString(from: referenceDate))
                        .font(.largeTitle)
                        .onAppear(perform: {
                            _ = self.timer
                        })
 */
                    
                }
                
                Spacer()
                                
                HStack {
                    Spacer()
                    
                    NavigationLink(destination: Home()) {
                        
                        Text ("Restart")
                            .padding([.trailing, .leading], 40)
                            .padding([.top, .bottom], 15)
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .background(.red)
                            .cornerRadius(40)
                            .padding([.trailing],400)
                            .padding([.bottom], 80)
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}






// TELA FINAL VERSÃO ANTIGA

/*var body: some View {
 VStack (alignment: .center) {
 Text("And now, what is the value of time for you?")
 .font(.system(size: 100.0, weight: .bold, design: .default))
 //.background(Color.red)
 .foregroundColor(Color.white)
 //.frame(width: 527)
 .padding([.top], 30)
 Spacer()
 
 Text("2812 days 12:57:20 to 2030")
 .font(.system(size: 70.0, weight: .bold, design: .default))
 //.background(Color.red)
 .foregroundColor(Color.white)
 //.frame(width: 527)
 .padding([.leading], 100)
 .padding([.top], 100)
 
 Spacer()
 
 Button(action: {
 print ("Clicked")
 }) {
 Text ("Discover")
 .padding()
 .font (.headline)
 .foregroundColor(.white)
 .background(.gray)
 .cornerRadius(40)
 .padding([.leading], 170)
 .padding([.bottom], 80)
 }
 
 }
 }
 }*/
