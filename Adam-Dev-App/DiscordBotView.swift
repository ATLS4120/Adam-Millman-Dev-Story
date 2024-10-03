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
                
                TextView(text: DevAppText.discordBotText,
                     backgroundColor: .cyan,
                     shadowColor: .gray,
                     shadowRadius: 20,
                     cornerRadius: 10)
                    
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
