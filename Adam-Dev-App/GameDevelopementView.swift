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
                    .resizable() // Make the image resizable
                    .scaledToFill() // Scale the image to fill the view
                    .edgesIgnoringSafeArea(.all) // Ensure it covers the entire screen

                VStack {
                    Spacer() // Push the content upwards

                    Text(DevAppText.gameDevText)
                        .padding() // Add padding around the text
                        .background(Color.gray.opacity(0.7)) // Set the background color
                        .foregroundColor(.white) // Set the text color
                        .cornerRadius(10) // Optional: add rounded corners
                        .font(.title) // Optional: set the font size
                        .multilineTextAlignment(.center) // Center-aligns the text if it's multiline
                        .frame(maxWidth: .infinity) // Ensure the frame takes the maximum available width
                        .padding(.horizontal) // Add horizontal padding

                    NavigationLink(destination: MoveToColoradoView()) {
                        Text("Next")
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                            .multilineTextAlignment(.center)
                            .padding(.top) // Add space above the button
                    }
                    .padding(.bottom) // Add space below the button

                    Spacer() // Push the content downwards
                }
                .padding()
            }
        }
    }
}

#Preview {
    GameDevelopmentView()
}
