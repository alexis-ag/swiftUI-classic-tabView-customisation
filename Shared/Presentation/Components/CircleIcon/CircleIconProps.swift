import SwiftUI

struct CircleIconProps{
    let size: CGFloat
    let style: Style

    enum Style{
        case filled(imageName: String)
        case systemImage(systemImageName: String, font: Font, backgroundColor: Color, foregroundColor: Color)
    }
}