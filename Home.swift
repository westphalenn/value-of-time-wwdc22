import SwiftUI

struct Home: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Spacer().frame(width: 20)
                
                TitleOneView(firstPart: Text ("What is the\n"), secondPart: Text("value of\ntime?"))
                Spacer()
            }
            Spacer()
            
            
            HStack {
                Spacer()
                
                NavigationLink(destination: Intro()) {
                    
                        Text ("Discover")
                            .padding([.trailing, .leading], 40)
                            .padding([.top, .bottom], 15)
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .background(.red)
                            .cornerRadius(40)
                            .padding([.trailing],310)
                            .padding([.bottom], 80)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}



//Text("What is the\nvalue of\ntime?")
//    .font(.system(size: 130.0, weight: .bold, design: .default))
//  .foregroundColor(Color.white)
//.padding([.top], 100)
//.padding([.leading], 70)
//Spacer()
