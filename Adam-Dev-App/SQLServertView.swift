//
//  SQLServerDevelopmentView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//

import SwiftUI

struct SQLServerView: View {
    var body: some View {
        ContentView(title: "SQL Server Development", backgroundColor: .yellow) {
            VStack(spacing: 20) {
                Text(DevAppText.sqlServersText)
                    .multilineTextAlignment(.leading)
                    .padding()
                Image("SQL")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 20)
                    .frame(maxWidth: .infinity)
                
                NavigationLink(destination: GameDevelopmentView()) {
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
    SQLServerView()
}
