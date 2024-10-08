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
                Color.yellow
                    .edgesIgnoringSafeArea(.all)
                
                Image("texture")
                    .resizable()
                    .scaledToFill()
                    .opacity(0.1)
                    .edgesIgnoringSafeArea(.all)

                VStack(spacing: 20) {
                    Text(DevAppText.vrIntroClassText)
                        .multilineTextAlignment(.center)
                        .padding()
                        .font(.headline)
                        .foregroundColor(.black)
                        .background(Color.white)
                        .cornerRadius(12)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                

                    Image("VRClass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .cornerRadius(12)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
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
