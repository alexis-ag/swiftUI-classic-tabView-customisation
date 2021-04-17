import SwiftUI

struct ContactsContainer: View {
    var body: some View {
        NavigationView {
            pageContent()
                .navigationTitle("Contacts")
        }
    }

    @ViewBuilder
    private func pageContent() -> some View {
        VStack {
            Text("Contacts container")
            NavigationLink(destination: Text("Details")) {
                Text("Details")
            }
        }
    }
}
