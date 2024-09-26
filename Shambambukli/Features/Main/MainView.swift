//
//  ContentView.swift
//  Shambambukli
//
//  Created by Artyom Petrichenko on 26.09.2024.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Клеточное наполнение")
                    .font(.system(size: 20, weight: .medium))
                    .foregroundColor(.white)
                    .padding()
                
                CellsView(viewModel: viewModel)
                
                Spacer()
                
                CreateCellulaButton(model: viewModel)
            }
            .background(LinearGradient.backgroundGradient().ignoresSafeArea())
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
