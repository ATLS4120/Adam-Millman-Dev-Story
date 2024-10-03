//
//  StartingView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 10/3/24.
//

import SwiftUI

struct StartingView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("My Dev Story")
                    .font(.largeTitle)
                    .padding()
                    .background(.pink)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.top)
                
                Text("Welcome to my Dev Story App! To start your journey, swipe to the left!")
                    .font(.headline)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.black.opacity(0.7))
                    .cornerRadius(15)
                    .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 5)
                    .padding()
            }
        }
    }
}
#Preview{
    StartingView()
}
