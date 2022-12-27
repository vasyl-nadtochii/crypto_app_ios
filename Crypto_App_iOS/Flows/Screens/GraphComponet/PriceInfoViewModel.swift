//
//  PriceInfoViewModel.swift
//  Crypto_App_iOS
//
//  Created by Zhenya Pavlovskyi on 27.12.2022.
//

import Foundation
import SwiftUI

class PriceInfoViewModel: ObservableObject, Identifiable {
    
    let price: Double
    let day: String
    let color: Color
    
    init(price: Double, day: String, color: Color) {
        self.price = price
        self.day = day
        self.color = color
    }
}
