//
//  CreateCellulaButton.swift
//  Shambambukli
//
//  Created by Artyom Petrichenko on 26.09.2024.
//

import SwiftUI

struct CreateCellulaButton: View {
    
    var model: MainViewModel
    
    var body: some View {
        Button(action: model.input.onButtonTap.send) {
                Text("СОТВОРИТЬ")
                    .font(.system(size: 14, weight: .regular))
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(CreatCellulaButtonStyle())
            .padding()
    }
}

//#Preview {
//    CreateCellulaButton()
//}
