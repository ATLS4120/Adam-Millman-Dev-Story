//
//  FutureGoalsView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//

import SwiftUI

struct FutureGoalsView: View {
    @State private var showMoreInfo = false
    
    var body: some View {
        ContentView(title: "Future Goals", backgroundColor: Color.green) {
            VStack(spacing: 20) {
                Text(DevAppText.futureText)
                
                Button(action: {
                    showMoreInfo.toggle()
                }) {
                    Text(showMoreInfo ? "Show Less" : "Show More")
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                }
                
                if showMoreInfo {
                    Text("I'm excited to delve into new projects and technologies!")
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                }
            }
            .padding()
        }
    }
}
