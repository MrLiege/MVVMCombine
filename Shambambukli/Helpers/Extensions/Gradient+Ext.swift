//
//  Gradient+Ext.swift
//  Shambambukli
//
//  Created by Artyom Petrichenko on 26.09.2024.
//

import SwiftUI

extension LinearGradient {
    static func deadCellulaGradient() -> LinearGradient {
        return LinearGradient(
            gradient: Gradient(
                colors: [
                Color(red: 13/255, green: 101/255, blue: 138/255),
                Color(red: 176/255, green: 255/255, blue: 180/255)
                ]
            ),
            startPoint: .top,
            endPoint: .bottom)
    }
    
    static func livingCellukaGradient() -> LinearGradient {
        return LinearGradient(
            gradient: Gradient(
                colors: [
                Color(red: 255/255, green: 184/255, blue: 0/255),
                Color(red: 255/255, green: 247/255, blue: 176/255)
                ]
            ),
            startPoint: .top,
            endPoint: .bottom)
    }
    
    static func lifeGradient() -> LinearGradient {
        return LinearGradient(
            gradient: Gradient(
                colors: [
                Color(red: 173/255, green: 0/255, blue: 255/255),
                Color(red: 255/255, green: 176/255, blue: 233/255)
                ]
            ),
            startPoint: .top,
            endPoint: .bottom)
    }
    
    static func backgroundGradient() -> LinearGradient {
        return LinearGradient(
            gradient: Gradient(
                colors: [
                    Color.buttonColor,
                    Color.black
                ]
            ),
            startPoint: .top,
            endPoint: .bottom)
    }
}
