//
//  CellsView.swift
//  Shambambukli
//
//  Created by Artyom Petrichenko on 26.09.2024.
//

import SwiftUI

struct CellsView: View {
    
    @ObservedObject var viewModel: MainViewModel
    
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                ForEach(viewModel.output.cells.indices, id: \.self) { index in
                    CellulaView(model: viewModel.output.cells[index])
                        .padding(.horizontal)
                        .id(index)
                }
            }
            .onChange(of: viewModel.output.cells.count) { newValue in
                withAnimation {
                    proxy.scrollTo(newValue - 1, anchor: .bottom)
                }
            }
        }
    }
}
