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
            VStack{
                Image("RVCC")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .padding(.bottom, 10)
                    Text(DevAppText.journeyText)
                        .multilineTextAlignment(.leading)
                        .padding()
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
    

#Preview{
    TheBeginningView()
}
