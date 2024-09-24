//
//  MoveToColoradoView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//

import SwiftUI

struct MoveToColoradoView: View {
    var body: some View {
        ContentView(title: "Move to Colorado", backgroundColor: Color.purple) {
            VStack(spacing: 10) {
                Text(DevAppText.moveToColoradoText)
                    .multilineTextAlignment(.leading)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                
                NavigationLink(destination: VRDevelopmentView()) {
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
