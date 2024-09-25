//
//  ArduinoProgrammingView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//

import SwiftUI

struct ArduinoProgrammingView: View {
    @State private var currentImage: String = "arduino"
    @State private var isAlternateImage: Bool = false

    var body: some View {
        ContentView(title: "Arduino Programming", backgroundColor: .cyan) {
            ZStack {
                Color.purple
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    Spacer()

                    Text(DevAppText.arduinoProgrammingText)
                        .padding()
                        .foregroundColor(.black)
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: 300)
                        .background(Color.white)
                        .cornerRadius(12)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)

                    Image(currentImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .padding(.top, 20)

                    NavigationLink(destination: CppClassView()) {
                        Text("Next")
                            .padding()
                            .frame(maxWidth: 300)
                            .background(Color.brown)
                            .foregroundColor(.yellow)
                            .font(.headline)
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 3)
                            .padding(.top, 20)
                    }
                    Button(action: {
                        isAlternateImage.toggle()
                        currentImage = isAlternateImage ? "arduino_alt" : "arduino"
                    }) {
                        Text("Change Image")
                            .padding()
                            .background(Color.yellow)
                            .foregroundColor(.purple)
                            .font(.headline)
                            .cornerRadius(15)
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 3)
                            .padding(.top, 20)
                    }

                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview{
    ArduinoProgrammingView()
}
