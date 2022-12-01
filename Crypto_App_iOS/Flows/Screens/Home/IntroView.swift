//
//  ContentView.swift
//  Crypto_App_iOS
//
//  Created by Vasyl Nadtochii on 25.11.2022.
//


import SwiftUI

struct IntroView: View {
    
    @ObservedObject var viewModel: IntroViewModel
    
    var body: some View {
        VStack {
            VStack {
                welcomeTitle
                toTheCryptoTitle
            }
            .padding(.top, 25)
            .opacity(viewModel.showingTopTitle ? 1.0 : 0.0)
            .onAppear() {
                withAnimation(Animation.easeInOut(duration: 1.0)) {viewModel.showingTopTitle.toggle()}
            }
            Spacer()
            
            VStack {
                ControlsView()
            }
            .padding(.bottom, 30)
            .opacity(viewModel.showingBottomTitle ? 1.0 : 0.0)
            .onAppear() {
                withAnimation(Animation.easeInOut(duration: 2.0)) {viewModel.showingBottomTitle.toggle()}
            }
            
        } .background(
            Image.homeBackgroun
                .ignoresSafeArea()
                
        )
    }
}


private extension IntroView {
    
    var welcomeTitle: some View {
        Text("welcome")
            .foregroundColor(Color.cultured)
            .font(.system(size: 45))
            .fontWeight(.heavy)
    }
    
    var toTheCryptoTitle: some View {
        Text("to_the_crypto")
            .foregroundColor(Color.cultured)
            .font(.system(size: 35))
            .fontWeight(.bold)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView(viewModel: .init())
    }
}

