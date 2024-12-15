//
//  SplashScreenView.swift
//  JaMaTo
//
//  Created by Kay Wilde on 15.12.24.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false

    var body: some View {
        if isActive {
            // Hauptinhalt der App
            MainView()
        } else {
            // Splash Screen Inhalt
            VStack {
                Image("startPicture")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 1024, height: 1024)
                    .foregroundColor(.blue)

                Text("JaMaTo")
                    .font(.largeTitle)
                    .bold()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            .onAppear {
                // Verzögerung für den Splash Screen
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    withAnimation {
                        isActive = true
                    }
                }
            }
        }
    }
}
