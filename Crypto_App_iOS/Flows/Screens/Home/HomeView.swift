//
//  HomeView.swift
//  Crypto_App_iOS
//
//  Created by Zhenya Pavlovskyi on 06.12.2022.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Form {
                        bitcoinSection
                        litecoinSection
                        ethereumSection
                        bitcoinSection
                        litecoinSection
                        ethereumSection
                    }
                    .scrollContentBackground(.hidden)
                    .foregroundColor(Color.cultured)
                    
                    buttonSettings
                }
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        toolBarCrypto
                    }
                    
                } .navigationBarTitleDisplayMode(.inline)
            } .background(Color.backgroundColor)
        }
    }
}

private extension HomeView {
    
    func createSection(imageName: Image, nameCoin: String, priceCoin: String) -> some View {
        HStack {
            Button(action: {}) {
                HStack {
                    imageName
                        .frame(width: 25)
                        .padding(.trailing)
                    Text("\(nameCoin)")
                        .foregroundColor(Color.cultured)
                    Spacer()
                    
                    Text("\(priceCoin)")
                        .padding(.all, 5)
                        .clipped()
                        .background(Color.carbon)
                        .cornerRadius(10)
                        .foregroundColor(Color.cultured)
                }
                .fontWeight(.bold)
            }
        }
    }
    
    var bitcoinSection: some View {
        Section {
            VStack {
                createSection(imageName: Image.bitcoin, nameCoin: "Bitcoin", priceCoin: "$21,188.12")
            }
        }
        .listRowBackground(Color.noire)
        .frame(height: 40)
    }
    
    var litecoinSection: some View {
        Section {
            VStack {
                createSection(imageName: Image.litecoin, nameCoin: "Litecoin", priceCoin: "$68.06")
            }
        }
        .listRowBackground(Color.noire)
        .frame(height: 40)
    }
    
    var ethereumSection: some View {
        Section {
            VStack {
                createSection(imageName: Image.ether, nameCoin: "Ethereum", priceCoin: "$1,651.64")
            }
        }
        .listRowBackground(Color.noire)
        .frame(height: 40)
    }
    
    var buttonSettings: some View {
        Button(action: {}, label: {
            Image.settingsButton
            
        })
        .frame(width: 75, height: 75)
        .background(Color.monochrom)
        .cornerRadius(15)
        .offset(x:140, y: 0)
    }
    
    var toolBarCrypto: some View {
        Text("Crypto")
            .fontWeight(.heavy)
            .font(.system(size: 25))
            .foregroundColor(Color.cultured)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: .init())
    }
}
