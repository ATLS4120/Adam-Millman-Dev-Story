//
//  ContentView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//

import SwiftUI

struct ContentView<Content: View>: View {
    var title: String
    var backgroundColor: Color
    var content: () -> Content

    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
                .padding()
                .background(backgroundColor)
                .cornerRadius(10)
                .foregroundColor(.black)
            
            content()
                .padding()
                .background(Color.gray)
                .cornerRadius(12)
                .shadow(radius: 5)
        }
        .padding()
    }
}
