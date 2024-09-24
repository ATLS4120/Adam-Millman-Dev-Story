//
//  DiscordBotProjectView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//

import SwiftUI

struct DiscordBotView: View {
    var body: some View {
        ContentView(title: "Discord Bot Project", backgroundColor: Color.green) {
            HStack {
                Image("discord")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()
                
                VStack {
                    Text(DevAppText.discordBotText)
                        .multilineTextAlignment(.leading)
                        .padding()
                    NavigationLink(destination: SQLServerView()) {
                        Text("Next")
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                    }
                }
            }
        }
    }
}
