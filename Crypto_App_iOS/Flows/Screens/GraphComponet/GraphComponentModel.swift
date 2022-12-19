//
//  GraphComponentModel.swift
//  Crypto_App_iOS
//
//  Created by Zhenya Pavlovskyi on 08.12.2022.
//

import Foundation
import SwiftUI


class GraphComponentModel: ObservableObject {
    
    @Published var maxValue: Double = 100
    @Published var fullBarHeight: Double = 250
    
    let coinInfo: [CoinInfo] = [
        CoinInfo(price: 86.4, day: "01.11"),
        CoinInfo(price: 76.4, day: "02.11"),
        CoinInfo(price: 96.4, day: "03.11"),
        CoinInfo(price: 66.4, day: "04.11"),
        CoinInfo(price: 96.4, day: "05.11")
    ]
    
    func getColor(index: Int) -> Color {
        guard index > 0 else {
            return Color.emerald
        }

        let prev = coinInfo[index - 1].price
        let current = coinInfo[index].price
        return  (current >= prev) ? Color.emerald: Color.tomato
    }
}
