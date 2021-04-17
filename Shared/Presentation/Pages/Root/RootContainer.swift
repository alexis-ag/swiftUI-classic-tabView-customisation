import SwiftUI

struct ContentView: View {
    @State private var selectedNavBarTab: BottomNavTab = .dashboard {
        willSet {
            if newValue != selectedNavBarTab {
                print("do some reaction on become change navigation")
            }
        }
        didSet {
            print("do some reaction on navigation did changed")
        }
    }

    var body: some View {
        ZStack(alignment: .top) {
            appContent()
            navigation()
        }
    }

    private func appContent() -> some View {
        TabView(selection: $selectedNavBarTab) {
            dashboard()
                    .tabItem { EmptyTap(props: .init()) }
                    .tag(BottomNavTab.dashboard)

            contacts()
                    .tabItem { EmptyTap(props: .init()) }
                    .tag(BottomNavTab.contacts)

            messages()
                    .tabItem { EmptyTap(props: .init()) }
                    .tag(BottomNavTab.messages)

            events()
                    .tabItem { EmptyTap(props: .init()) }
                    .tag(BottomNavTab.events)

            settings()
                    .tabItem { EmptyTap(props: .init()) }
                    .tag(BottomNavTab.settings)
        }
    }

    private func navigation() -> some View {
        CustomTabView(
                props: .init(
                        selectedNavBarTab: selectedNavBarTab,
                        items: [.dashboard, .contacts, .events, .messages, .settings],
                        defaultColor: Color(r: 142, g: 142, b: 147, a: 1),
                        accentColor: Color.accentColor,
                        onTap: { item in
                            print("tap on: \(item.label)")
                            self.selectedNavBarTab = item
                        },
                        onLongTap: { item in
                            print("longTap on: \(item.label)")
                            self.selectedNavBarTab = item
                        }
                )
        )
    }


    private func dashboard() -> some View {
        DashboardContainer()
    }

    private func contacts() -> some View {
        ContactsContainer()
    }

    private func messages() -> some View {
        MessagesContainer()
    }

    private func events() -> some View {
        EventsContainer()
    }

    private func settings() -> some View {
        SettingsContainer()
    }
}