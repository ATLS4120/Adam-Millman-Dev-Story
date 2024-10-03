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
                .background(backgroundColor)
                .padding()
                content()
  
        }
        .padding()
    }
}
