//
//  CellView.swift
//  Shambambukli
//
//  Created by Artyom Petrichenko on 26.09.2024.
//

import SwiftUI

struct CellulaView: View {
    
    var model: Cellula
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Text(model.icon)
                .font(.system(size: 20))
                .padding()
                .background(
                    Circle()
                        .fill(model.background)
                )
            
            VStack(alignment: .leading, spacing: 7) {
                Text(model.name)
                    .font(.system(size: 20, weight: .medium))
                    .foregroundStyle(.black)
                Text(model.description)
                    .font(.system(size: 14, weight: .regular))
                    .foregroundStyle(.black)
            }
            
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
    }
}
