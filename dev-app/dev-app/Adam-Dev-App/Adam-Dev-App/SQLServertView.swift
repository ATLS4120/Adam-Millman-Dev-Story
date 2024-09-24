//
//  SQLServerDevelopmentView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//

import SwiftUI

struct SQLServerView: View {
    var body: some View {
        ContentView(title: "SQL Server Development", backgroundColor: Color.orange) {
            VStack(spacing: 20) {
                Text(DevAppText.sqlServersText)
                    .multilineTextAlignment(.leading)
                    .padding()
                
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
