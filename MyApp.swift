import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ViewMestre()
        }
    }
}

struct MyApp_Preview: PreviewProvider {
    static var previews: some View {
        ViewMestre()
            .previewDevice("iPad Pro (12.9-inch) (5th generation)")
            .previewInterfaceOrientation(.portraitUpsideDown)
        
    }
}
