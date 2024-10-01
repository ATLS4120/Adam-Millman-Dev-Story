//
//  TheBeginningView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//

import SwiftUI

import SwiftUI

struct TheBeginningView: View {
    var body: some View {
        ContentView(title: "The Beginning", backgroundColor: .red) {
            HStack {
                Image("RVCC")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .padding(.bottom, 10)

                Text(DevAppText.journeyText)
                    .multilineTextAlignment(.leading)
                    .padding()

                NavigationLink(destination: DiscordBotView()) {
                    Text("Next")
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color.white)
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        )
                        .scaleEffect(isHovered ? 1.1 : 1.0)
                        .animation(.easeInOut(duration: 0.2), value: isHovered)
                        .onHover { hovering in
                            isHovered = hovering
                        }
                }
                .padding(.top, 20)
            }
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(15)
            .shadow(radius: 10)
            .padding()
        }
    }
    
    @State private var isHovered = false
}

#Preview{
    TheBeginningView()
}
