//
//  VRDevelopmentView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//
import SwiftUI

struct VRDevelopmentView: View {
    @State private var scale: CGFloat = 1.0 // State for scaling effect
    @State private var isAlternateGradient = false // State to track which gradient to use

    // Define the gradients
    private let defaultGradient: [Color] = [Color.black.opacity(0.7), Color.purple.opacity(0.5)]
    private let alternateGradient: [Color] = [Color.blue.opacity(0.7), Color.green.opacity(0.5)]

    var body: some View {
        ContentView(title: "Virtual Reality Development", backgroundColor: .purple) {
            ZStack {
                // Background Image
                Image("VR") // Ensure this image exists in your assets
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)

                // Gradient Overlay
                LinearGradient(gradient: Gradient(colors: isAlternateGradient ? alternateGradient : defaultGradient), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)

                // Centered VStack for layout
                VStack {
                    Spacer() // Push content to the center

                    // Text Area
                    Text(DevAppText.vrDevelopmentText)
                        .padding()
                                              .foregroundColor(.yellow) // Change text color for contrast
                                              .font(.title2) // Adjusted font size for better fit
                                              .fontWeight(.bold) // Make the text bold
                                              .multilineTextAlignment(.center) // Center align the text
                                              .frame(maxWidth: 300) // Limit the width to avoid cutoff
                                              .background(Color.black.opacity(0.7)) // Semi-transparent background
                                              .cornerRadius(12)
                                              .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 5)

                    // Button to change gradient colors
                    Button(action: {
                        // Toggle the gradient state
                        isAlternateGradient.toggle()
                    }) {
                        Text("Change Gradient")
                            .padding()
                            .background(Color.orange)
                            .foregroundColor(.white)
                            .font(.headline)
                            .cornerRadius(15)
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 3)
                    }
                    .padding(.top, 20)

                    // Navigation Link
                    NavigationLink(destination: ArduinoProgrammingView()) {
                        Text("Next")
                            .padding()
                            .frame(maxWidth: 300) // Limit the button width
                            .background(Color.green) // Change button color
                            .foregroundColor(.white)
                            .font(.headline)
                            .cornerRadius(15) // More pronounced corners
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 3)
                    }
                    .padding(.top, 20)

                    
                    Spacer() // Push content to the center
                }
                .padding()
            }
        }
    }
}

#Preview{
    VRDevelopmentView()
}
