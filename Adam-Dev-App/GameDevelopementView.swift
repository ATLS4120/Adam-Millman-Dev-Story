//
//  GameDevelopementView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//

import SwiftUI

struct GameDevelopmentView: View {
    var body: some View {
        ContentView(title: "Game Development", backgroundColor: Color.red) {
            ZStack {
                Color.red.opacity(0.1)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text(DevAppText.gameDevText)
                        .multilineTextAlignment(.center)
                        .padding()
                    NavigationLink(destination: MoveToColoradoView()) {
                        Text("Next")
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                    }
                }
                .padding()
            }
        }
    }
}

