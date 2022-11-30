//
//  ContentView.swift
//  Crypto_App_iOS
//
//  Created by Vasyl Nadtochii on 25.11.2022.
//


import SwiftUI

struct ContentView: View {
    
    @State private var firstTitle = false
    @State private var secondTitle = false
    
    var body: some View {
        VStack {
            VStack {
                WelcomeTitle
                ToTheCryptoTitle
            }
            .padding(.top, 25)
            .opacity(firstTitle ? 1.0 : 0.0)
            .onAppear() {
                withAnimation(Animation.easeInOut(duration: 1.0)) {firstTitle.toggle()}
            }
            Spacer()
            
            VStack {
                LetsStartButton
            }
            .padding(.bottom, 30)
            .opacity(secondTitle ? 1.0 : 0.0)
            .onAppear() {
                withAnimation(Animation.easeInOut(duration: 2.0)) {secondTitle.toggle()}
            }
            
        } .background(
            Image.homeBackgroun
                .ignoresSafeArea()
                
        )
    }
}


private extension ContentView {
    
    var WelcomeTitle: some View {
        Text("Welcome")
            .foregroundColor(Color.cultured)
            .font(.system(size: 45))
            .fontWeight(.heavy)
    }
    
    var ToTheCryptoTitle: some View {
        Text("To the Crypto")
            .foregroundColor(Color.cultured)
            .font(.system(size: 35))
            .fontWeight(.bold)
    }
    
    var LetsStartButton: some View {
        Button(action: {}, label: {
            Text("Let's start!")
                .fontWeight(.bold)
                .foregroundColor(Color.cultured)
                .frame(width: UIScreen.main.bounds.width - 120)
                .padding()
        })
        .background(Color.mainToolBarColor)
        .cornerRadius(10)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

