//
//  ContentView.swift
//  MasteringLabelsInSwiftUI
//
//  Created by Ramill Ibragimov on 1/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Label {
            Text("Mastering Labels in SwiftUI")
        } icon: {
            Image(systemName: "swift")
        }
        .labelStyle(CustomLabelStyle(iconColor: .mint, titleColor: .orange, backgroundColor: .mint))
    }
}

#Preview {
    ContentView()
}

struct CustomLabelStyle: LabelStyle {
    let iconColor: Color
    let titleColor: Color
    let backgroundColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .firstTextBaseline) {
            configuration.icon
                .foregroundStyle(iconColor.gradient)
            configuration.title
                .foregroundStyle(titleColor.gradient)
            configuration.icon
                .foregroundStyle(iconColor.gradient)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(backgroundColor.gradient.opacity(0.2)))
    }
}
