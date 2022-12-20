//
//  CoinInfo.swift
//  Crypto_App_iOS
//
//  Created by Zhenya Pavlovskyi on 20.12.2022.
//

import Foundation
import SwiftUI

struct CoinInfo: Identifiable {
    let price: Double
    let day: String
    let id = UUID()
}
