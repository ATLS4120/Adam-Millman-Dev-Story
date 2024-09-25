//
//  VRClassView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//
import SwiftUI

struct VRClassView: View {
    var body: some View {
        ContentView(title: "Virtual Reality Class", backgroundColor: .yellow) {
            ZStack {
                // Solid background color with a texture overlay
                Color.yellow
                    .edgesIgnoringSafeArea(.all)
                
                // Textured overlay
                Image("texture") // Make sure you have a texture image in your assets
                    .resizable()
                    .scaledToFill()
                    .opacity(0.1) // Adjust opacity for subtlety
                    .edgesIgnoringSafeArea(.all)

                VStack(spacing: 20) {
                    // Text Area
                    Text(DevAppText.vrIntroClassText)
                        .multilineTextAlignment(.leading)
                        .padding()
                        .font(.headline)
                        .foregroundColor(.black)
                        .background(Color.white) // Solid white background
                        .cornerRadius(12)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        .frame(maxWidth: .infinity) // Ensures text fits within the screen width

                    // Image Area
                    Image("VRClass") // Ensure this image exists in your assets
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200) // Adjust size as needed
                        .cornerRadius(12)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)

                    // Navigation Link
                    NavigationLink(destination: FutureGoalsView()) {
                        Text("Next")
                            .padding()
                            .frame(maxWidth: .infinity) // Make the button stretch
                            .background(Color.white)
                            .foregroundColor(.black)
                            .font(.headline)
                            .cornerRadius(15)
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 3)
                    }
                    .padding(.top, 20)
                }
                .padding()
            }
        }
    }
}

#Preview{
    VRClassView()
}
