import SwiftUI

struct MessagesContainer: View {
    var body: some View {
        NavigationView {
            pageContent()
                    .navigationTitle("Messages")
        }
    }

    @ViewBuilder
    private func pageContent() -> some View {
        List {
            ForEach((1...100), id: \.self) {
                message($0)
            }
        }
    }

    private func message(_ index: Int) -> some View {
        NavigationLink(destination: Text("Details for message: \(index)")) {
            VStack(alignment: .leading) {
                Text("message \(index) ")
                Text("timestamp: \(Date().timeIntervalSince1970)")
            }
        }
    }
}
