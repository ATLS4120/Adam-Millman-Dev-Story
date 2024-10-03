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
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(.black)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)

                Image("SQL")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .padding(.horizontal, 20)
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(12)
                    .shadow(radius: 5)

            }
            .padding()
            .background(Color.yellow.opacity(0.9)) 
            .cornerRadius(20)
            .shadow(radius: 10)
            .padding()
        }
    }
}

#Preview{
    SQLServerView()
}
