//
//  HomeViewModel.swift
//  Crypto_App_iOS
//
//  Created by Zhenya Pavlovskyi on 06.12.2022.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    
    let sectionCoin = [
        Data(imageName: Image.bitcoin, nameCoin: "Bitcoin", priceCoin: "$21,188.12"),
        Data(imageName: Image.litecoin, nameCoin: "Litecoin", priceCoin: "$68.06"),
        Data(imageName: Image.ether, nameCoin: "Ether", priceCoin: "$1,651.64"),
        Data(imageName: Image.bitcoin, nameCoin: "Bitcoin", priceCoin: "$21,188.12"),
        Data(imageName: Image.litecoin, nameCoin: "Litecoin", priceCoin: "$68.06"),
        Data(imageName: Image.ether, nameCoin: "Ether", priceCoin: "$1,651.64"),
    ]
    
}
