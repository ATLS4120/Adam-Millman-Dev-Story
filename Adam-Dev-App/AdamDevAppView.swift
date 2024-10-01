//
//  AdamDevApp.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//

import SwiftUI


struct AdamDevAppView: View {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(
                    title: "My Dev Story",
                    backgroundColor: .pink) {
                        ScrollView{
                            NavigationLink(destination: TheBeginningView()){
                                Text("Click here to Begin the Journey")
                                    .background(Color.mint)
                            }
                            .padding()
                        }
                    }
            }
        }
    }
}
#Preview{
    AdamDevApp()
}
