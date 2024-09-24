//
//  CppClassView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//

import SwiftUI

struct CppClassView: View {
    var body: some View {
        ContentView(title: "C++ Class", backgroundColor: .green) {
            VStack(spacing: 20) {
                Image("C++")
                    .imageScale(.medium)
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
#Preview{
    CppClassView()
}
