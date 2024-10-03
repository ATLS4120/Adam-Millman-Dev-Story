//
//  TextView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 10/3/24.
//

import SwiftUI

struct TextView: View {
    let text: String
    var backgroundColor: Color = .white
    var shadowColor: Color = Color.black.opacity(0.2)
    var shadowRadius: CGFloat = 5
    var cornerRadius: CGFloat = 12
    
    var body: some View {
    Text(text)
        .multilineTextAlignment(.center)
        .padding()
        .font(.headline)
        .foregroundColor(.black)
        .background(backgroundColor)
        .cornerRadius(cornerRadius)
        .shadow(color: shadowColor, radius: shadowRadius, x: 0, y: 5)
    }
}
