//
//  AdamDevApp.swift
//  Adam-Dev-App
//
//  Created by Adam Millman on 9/23/24.
//

import SwiftUI

@main
struct AdamDevApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(
                    title: "My Dev Story",
                    backgroundColor: .yellow) {
                        VStack(spacing: 20) {
                            NavigationLink(destination: TheBeginningView()) {
                                Text("The Beginning")
                                    .font(.body)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            NavigationLink(destination: DiscordBotView()) {
                                Text("Discord Bot Project")
                                    .font(.body)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            NavigationLink(destination: SQLServerView()) {
                                Text("SQL Server Development")
                                    .font(.body)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            NavigationLink(destination: GameDevelopmentView()) {
                                Text("Game Development")
                                    .font(.body)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            NavigationLink(destination: MoveToColoradoView()) {
                                Text("Move to Colorado")
                                    .font(.body)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            NavigationLink(destination: VRDevelopmentView()) {
                                Text("Virtual Reality Development")
                                    .font(.body)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            NavigationLink(destination: ArduinoProgrammingView()) {
                                Text("Arduino Programming")
                                    .font(.body)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            NavigationLink(destination: CppClassView()) {
                                Text("C++ Class")
                                    .font(.body)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            NavigationLink(destination: VRClassView()) {
                                Text("Virtual Reality Class")
                                    .font(.body)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            NavigationLink(destination: FutureGoalsView()) {
                                Text("Future Goals")
                                    .font(.body)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                        }
                        .padding()
                    }
            }
        }
    }
}
