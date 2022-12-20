//
//  GraphComponentView.swift
//  Crypto_App_iOS
//
//  Created by Zhenya Pavlovskyi on 08.12.2022.
//

import SwiftUI

struct GraphComponentView: View {
    @ObservedObject var viewModel: GraphComponentModel
    
    var body: some View {
        ZStack {
            VStack(alignment: .center, spacing: 10) {
                HStack(alignment: .bottom, spacing: 26) {
                    ForEach(Array(viewModel.coinInfo.enumerated()), id: \.offset) { index, value in
                        Rectangle()
                            .foregroundColor(viewModel.getColor(index: index))
                            .frame(width: 35, height: (Double(viewModel.fullBarHeight) / viewModel.maxValue) * value.price )
                            .cornerRadius(.infinity)
                    }
                }
                customeColorDivider1
                
                HStack(spacing: 9) {
                    ForEach(viewModel.coinInfo) { val in
                        Text(val.day)
                    }
                    .frame(width: 50, height: 30)
                    .foregroundColor(Color.cultured)
                    .background(Color.monochrom)
                    .cornerRadius(40)
                    .padding(.bottom, 10)
                }
            }
        }
        .frame(width: 330, height: 330, alignment: .bottom)
        .background(Color.noire)
        .cornerRadius(15)
    }
}

private extension GraphComponentView {
    var customeColorDivider1: some View {
        Color.gray
            .cornerRadius(.infinity)
            .frame(height: 5)
            .padding([.trailing, .leading], 25)
    }
}

struct GraphComponentView_Previews: PreviewProvider {
    static var previews: some View {
        GraphComponentView(viewModel: .init())
    }
}
