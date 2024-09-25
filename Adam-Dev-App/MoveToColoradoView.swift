//
//  MoveToColoradoView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//
import SwiftUI

struct MoveToColoradoView: View {
    @State private var showText = false

    var body: some View {
        ContentView(title: "Move to Colorado", backgroundColor: .cyan) {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.cyan, Color.blue]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)

                VStack(spacing: 20) {

                    Image("colorado")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                        .shadow(radius: 5)
                        .onTapGesture {
                            withAnimation {
                                showText.toggle()
                            }
                        }

                    Text("Tap the image to see more information")
                        .foregroundColor(.white)
                        .font(.subheadline)
                        .padding(.bottom)

                    if showText {
                        Text(DevAppText.moveToColoradoText)
                            .multilineTextAlignment(.center)
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .font(.title3)
                            .cornerRadius(12)
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                            .transition(.opacity)
                    }

                    NavigationLink(destination: VRDevelopmentView()) {
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

#Preview{
    MoveToColoradoView()
}
