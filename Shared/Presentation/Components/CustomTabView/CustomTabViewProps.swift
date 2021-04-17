import Foundation
import SwiftUI

struct CustomTabViewProps {
    let selectedNavBarTab: BottomNavTab
    let items: [BottomNavTab]
    let defaultColor: Color
    let accentColor: Color
    let onTap: (BottomNavTab) -> Void
    let onLongTap: (BottomNavTab) -> Void
}