//
//  Crypto_App_iOSApp.swift
//  Crypto_App_iOS
//
//  Created by Vasyl Nadtochii on 25.11.2022.
//

import SwiftUI

@main
struct Crypto_App_iOSApp: App {
    var body: some Scene {
        WindowGroup {
            IntroView(viewModel: .init())
        }
    }
}
