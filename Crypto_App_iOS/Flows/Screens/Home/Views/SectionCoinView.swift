//
//  SectionCoinView.swift
//  Crypto_App_iOS
//
//  Created by Zhenya Pavlovskyi on 07.12.2022.
//

import SwiftUI

struct SectionCoinView: View {
    
    @State var imageName: Image
    @State var nameCoin: String
    @State var priceCoin: String
    
    var body: some View {
        Section {
            HStack {
                imageName
                    .frame(width: 25)
                    .padding(.trailing)
                Text(nameCoin)
                Spacer()
                
                Text(priceCoin)
                    .padding(.all, 10)
                    .clipped()
                    .background(Color.carbon)
                    .cornerRadius(10)
            }
            .fontWeight(.bold)
        }
        .listRowBackground(Color.noire)
        .foregroundColor(Color.cultured)
        .frame(height: 40)
    }

}

struct SectionCoinView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            SectionCoinView(imageName: Image.bitcoin, nameCoin: "Bitcoin", priceCoin: "$21,188.12")
        } .background(Color.gray)
    }
}
