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
        ContentView(title: "Future Goals", backgroundColor: .orange) {
            VStack(spacing: 20) {
                Text(DevAppText.futureText)
                
                Button(action: {
                    showMoreInfo.toggle()
                }) {
                    HStack{
                        Text(showMoreInfo ? "Show Less" : "Show More")
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                    }
                }
                
                if showMoreInfo {
                    ZStack{
                        Image("Goals")
                            .resizable()
                            .scaledToFit()
                            .padding(.horizontal, 10)
                        Text("I'm excited to delve into new projects and technologies!")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.black.opacity(0.69))
                            .cornerRadius(8)
                    }
                }
            }
            .padding()
        }
    }
}
#Preview{
    FutureGoalsView()
}
