//
//  TheBeginningView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//

import SwiftUI

struct TheBeginningView: View {
    var body: some View {
        ContentView(title: "The Beginning", backgroundColor: .red) {
            VStack {
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
                        .background(Color.white)
                        .cornerRadius(8)
                }
            }
            .padding()
        }
    }
}
#Preview{
    TheBeginningView()
}
