//
//  CppClassView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//

import SwiftUI

struct CppClassView: View {
    var body: some View {
        ContentView(title: "C++ Class", backgroundColor: Color.brown) {
            VStack(spacing: 20) {
                Text(DevAppText.cppClassText)
                    .padding()
                
                NavigationLink(destination: VRClassView()) {
                    Text("Next")
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                }
            }
        }
    }
}
