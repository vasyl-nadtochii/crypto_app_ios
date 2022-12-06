//
//  ListView.swift
//  Crypto_App_iOS
//
//  Created by Zhenya Pavlovskyi on 06.12.2022.
//

import SwiftUI

    struct Data: Identifiable {
        
        let imageName: Image
        let nameCoin: String
        let priceCoin: String
        let id = UUID()
        
    }

    let sectionCoin = [
        Data(imageName: Image.bitcoin, nameCoin: "Bitcoin", priceCoin: "$21,188.12"),
        Data(imageName: Image.litecoin, nameCoin: "Litecoin", priceCoin: "$68.06"),
        Data(imageName: Image.ether, nameCoin: "Ether", priceCoin: "$1,651.64"),
        Data(imageName: Image.bitcoin, nameCoin: "Bitcoin", priceCoin: "$21,188.12"),
        Data(imageName: Image.litecoin, nameCoin: "Litecoin", priceCoin: "$68.06"),
        Data(imageName: Image.ether, nameCoin: "Ether", priceCoin: "$1,651.64"),
    ]


