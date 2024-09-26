//
//  Cellula.swift
//  Shambambukli
//
//  Created by Artyom Petrichenko on 26.09.2024.
//

import Foundation
import SwiftUI

struct Cellula {
    let icon: String
    let name: String
    let description: String
    let background: LinearGradient
}

extension Cellula {
    enum CellType {
        case dead
        case living
        case life
        
        var data: Cellula {
            switch self {
            case .dead:
                return Cellula(
                    icon: "💀",
                    name: "Мертвая",
                    description: "или прикидывается",
                    background: .deadCellulaGradient()
                )
            case .living:
                return Cellula(
                    icon: "💥",
                    name: "Живая",
                    description: "и шевелится!",
                    background: .livingCellukaGradient()
                )
            case .life:
                return Cellula(
                    icon: "🐣",
                    name: "Жизнь",
                    description: "Ку-ку!",
                    background: .lifeGradient()
                )
            }
        }
    }
}
