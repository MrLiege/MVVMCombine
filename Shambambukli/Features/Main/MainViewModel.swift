//
//  MainViewModel.swift
//  Shambambukli
//
//  Created by Artyom Petrichenko on 26.09.2024.
//

import Foundation
import Combine

final class MainViewModel: ObservableObject {
    let input: Input
    @Published var output: Output
    
    private var cancellables = Set<AnyCancellable>()
    
    private let cellulSelected: CurrentValueSubject<Cellula?, Never>
    let scrollToBottom = PassthroughSubject<Void, Never>()
    
    init(cellulSelected: CurrentValueSubject<Cellula?, Never> = CurrentValueSubject<Cellula?, Never>(nil)) {
        self.cellulSelected = cellulSelected
        self.input = Input()
        self.output = Output()
        bind()
    }
}

extension MainViewModel {
    func bind() {
        input.onButtonTap
            .sink { [weak self] in
                self?.addCell()
            }
            .store(in: &cancellables)
    }
}

extension MainViewModel {
    func addCell() {
        let newCell: Cellula.CellType = Bool.random() ? .living : .dead
        output.cells.append(newCell.data)
        
        checkLifeCycle()
        scrollToBottom.send()
    }
    
    private func checkLifeCycle() {
        guard output.cells.count >= 3 else { return }
        
        let lastThreeCells = output.cells.suffix(3)
        
        if lastThreeCells.allSatisfy({ $0.name == "Живая" }) {
            output.cells.append(Cellula.CellType.life.data)
        } else if lastThreeCells.allSatisfy({ $0.name == "Мертвая" }) {
            output.cells.removeAll { $0.name == "Живая" }
        }
    }
}

extension MainViewModel {
    struct Input {
        let onButtonTap = PassthroughSubject<Void, Never>()
    }
    
    struct Output {
        var cellula: Cellula?
        var cells: [Cellula] = []
    }
}
