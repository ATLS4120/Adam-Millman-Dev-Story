//
//  VRDevelopmentView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//

import SwiftUI

struct VRDevelopmentView: View {
    var body: some View {
        ContentView(title: "Virtual Reality Development", backgroundColor: .purple) {
            HStack {
                Image("VR")
                    .imageScale(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                VStack(alignment: .leading) {
                    Text(DevAppText.vrDevelopmentText)
                        .padding()
                    NavigationLink(destination: ArduinoProgrammingView()) {
                        Text("Next")
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                    }
                }
                .padding()
                
                Image("vr_image") // Add a relevant VR image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding()
            }
        }
    }
}

#Preview{
    VRDevelopmentView()
}
