//
//  VRClassView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//

import SwiftUI

struct VRClassView: View {
    var body: some View {
        ContentView(title: "Virtual Reality Class", backgroundColor: .yellow) {
            VStack {
                Text(DevAppText.vrIntroClassText)
                    .multilineTextAlignment(.leading)
                    .padding()
                    Image("VRClass")
                    .imageScale(.medium)
                
                NavigationLink(destination: FutureGoalsView()) {
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
    VRClassView()
}
