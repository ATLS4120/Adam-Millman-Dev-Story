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
                
                VStack {
                    Text(DevAppText.gameDevText)
                        .padding() // Add padding around the text
                        .background(Color.gray.opacity(0.7)) // Set the background color
                        .foregroundColor(.white) // Set the text color
                        .cornerRadius(10) // Optional: add rounded corners
                        .font(.title) // Optional: set the font size
                        .frame(maxWidth: .infinity) // Ensure the frame takes the maximum available width
                        .multilineTextAlignment(.center) // Optional: center-aligns the text if it's multiline
                    NavigationLink(destination: MoveToColoradoView()) {
                        Text("Next")
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                            .multilineTextAlignment(.center)
                        
                    }
                }
                .padding()
            }
        }
    }
}

#Preview{
    GameDevelopmentView()
}

    

