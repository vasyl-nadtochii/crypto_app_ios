//
//  GraphComponentModel.swift
//  Crypto_App_iOS
//
//  Created by Zhenya Pavlovskyi on 08.12.2022.
//

import Foundation
import SwiftUI


class GraphViewModel: ObservableObject {
    
    let maxValue: Double = 100
    let fullBarHeight: Double = 250
    var priceInfoViewModels: [PriceInfoViewModel] = []
    let coinInfo: [PriceInfo]
    
    init(coinInfo: [PriceInfo]) {
        self.coinInfo = coinInfo // Інжектим масив, передаєм в клас(Передаєш дані в .init)
        priceInfoViewModels = coinInfo.enumerated().map { (index, priceInfo) in
            return PriceInfoViewModel (
                price: priceInfo.price,
                day: priceInfo.day,
                color: getColor(index: index)
            )
        }
    }
    
    private func getColor(index: Int) -> Color {
        guard index > 0 else {
            return Color.emerald
        }
        let prev = coinInfo[index - 1].price
        let current = coinInfo[index].price
        return (current >= prev) ? Color.emerald: Color.tomato
    }
}
