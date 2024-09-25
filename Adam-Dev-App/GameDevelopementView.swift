//
//  GameDevelopementView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//

import SwiftUI

struct GameDevelopmentView: View {
    var body: some View {
        ContentView(title: "Game Development", backgroundColor: .green) {
            ZStack {
                Image("GameDev")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)

                Color.black.opacity(0.5).edgesIgnoringSafeArea(.all)

                VStack(spacing: 20) {
                    Spacer()

                    Text(DevAppText.gameDevText)
                        .padding()
                        .background(Color.pink.opacity(0.8))
                        .foregroundColor(.white)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: 300)
                        .cornerRadius(12)
                        .shadow(color: Color.yellow.opacity(0.5), radius: 5, x: 0, y: 2)

                    NavigationLink(destination: MoveToColoradoView()) {
                        Text("Next")
                            .padding()
                            .frame(maxWidth: 300)
                            .background(Color.orange)
                            .foregroundColor(.white)
                            .font(.headline)
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 3)
                    }
                    .padding(.top, 20)
                    .padding(.horizontal, 30)

                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    GameDevelopmentView()
}
