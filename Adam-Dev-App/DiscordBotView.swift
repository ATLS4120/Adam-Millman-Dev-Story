//
//  DiscordBotProjectView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//

import SwiftUI

struct DiscordBotView: View {
    var body: some View {
        ContentView(title: "Discord Bot Project", backgroundColor: .orange) {
            VStack(spacing: 20) {
                Image("discord")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding(.top, 40)
                
                Text(DevAppText.discordBotText)
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(.body)
                    .foregroundColor(.black)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)

                NavigationLink(destination: SQLServerView()) {
                    Text("Next")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .font(.headline)
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 3)
                }
                .padding(.horizontal, 30)
                .padding(.bottom, 40)
            }
            .padding()
            //.background(visualEffectBlur(blurStyle: .systemMaterial)) this didnt work
            .cornerRadius(20)
        }
    }
}

#Preview{
    DiscordBotView()
}
