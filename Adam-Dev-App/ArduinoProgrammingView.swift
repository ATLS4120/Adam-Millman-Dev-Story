//
//  ArduinoProgrammingView.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//

import SwiftUI

struct ArduinoProgrammingView: View {
    var body: some View {
        ContentView(title: "Arduino Programming", backgroundColor: Color.yellow) {
            VStack {
                Text(DevAppText.arduinoProgrammingText)
                    .multilineTextAlignment(.leading)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)

                NavigationLink(destination: CppClassView()) {
                    Text("Next")
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                }
            }
        }
    }
}
