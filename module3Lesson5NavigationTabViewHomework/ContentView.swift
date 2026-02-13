import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationStack {
                VStack {
                    TabBarView()
                }
                .padding(28)
            }
        }
    }
}


#Preview {
    ContentView()
}
