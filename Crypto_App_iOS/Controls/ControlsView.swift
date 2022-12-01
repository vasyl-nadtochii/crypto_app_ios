//
//  ControlsView.swift
//  Crypto_App_iOS
//
//  Created by Zhenya Pavlovskyi on 01.12.2022.
//

import SwiftUI

struct ControlsView: View {
    var body: some View {
        
        Button(action: {}, label: {
            Text("let's_start")
                .fontWeight(.bold)
                .foregroundColor(Color.cultured)
                .frame(width: UIScreen.main.bounds.width - 120)
                .padding()
        })
        .background(Color.mainToolBarColor)
        .cornerRadius(10)
    }
}


struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView()
    }
}
