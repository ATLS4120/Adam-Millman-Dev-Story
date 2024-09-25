//
//  VRDevelopmentView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//
import SwiftUI

struct VRDevelopmentView: View {
    var body: some View {
        ContentView(title: "Virtual Reality Development", backgroundColor: .purple) {
            ZStack {
                Image("VR")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)

                LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.7), Color.purple.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)

                // Main Content
                VStack(spacing: 20) {
                    Spacer()
                    
                    Text(DevAppText.vrDevelopmentText)
                        .padding()
                        .foregroundColor(.yellow)
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                        .background(Color.black.opacity(0.7))
                        .cornerRadius(12)
                        .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 5)

                    
                    NavigationLink(destination: ArduinoProgrammingView()) {
                        Text("Next")
                            .padding()
                            .frame(maxWidth: 300)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .font(.headline)
                            .cornerRadius(15)
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 3)
                    }
                    .padding(.top, 20)

                    Spacer()
                }
                .padding()
            }
        }
    }
}


#Preview{
    VRDevelopmentView()
}
