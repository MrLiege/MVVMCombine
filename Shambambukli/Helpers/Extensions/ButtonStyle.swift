//
//  ButtonStyle.swift
//  Shambambukli
//
//  Created by Artyom Petrichenko on 26.09.2024.
//

import SwiftUI

struct CreatCellulaButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding()
            .background(Color.buttonColor)
            .cornerRadius(4)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}
