//
//  VRDevelopmentView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//
import SwiftUI

struct VRDevelopmentView: View {
    @State private var scale: CGFloat = 1.0
    @State private var isAlternateGradient = false

    private let defaultGradient: [Color] = [Color.black.opacity(0.7), Color.purple.opacity(0.5)]
    private let alternateGradient: [Color] = [Color.blue.opacity(0.7), Color.green.opacity(0.5)]

    var body: some View {
        ContentView(title: "Virtual Reality Development", backgroundColor: .purple) {
            ZStack {
                Image("VR")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)

                LinearGradient(gradient: Gradient(colors: isAlternateGradient ? alternateGradient : defaultGradient), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    Spacer()

                    Text(DevAppText.vrDevelopmentText)
                        .padding()
                        .foregroundColor(.yellow)
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: 300)
                        .background(Color.black.opacity(0.7))
                        .cornerRadius(12)
                        .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 5)

                    Button(action: {
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
