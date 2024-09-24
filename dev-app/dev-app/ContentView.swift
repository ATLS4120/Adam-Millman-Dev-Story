//
//  ContentView.swift
//  Dev Story App
//
//  Created by Adam Millman on 9/10/24.
//

import SwiftUI

// Constants enum to store long strings
enum Constants {

    static let journeyText = "My journey in technology began at a small community college in New Jersey, where I immersed myself in various programming courses such as Python, Java, SQL, web development, and game development."

    static let discordBotText = "I built a Discord moderation bot to help maintain clean and safe chat environments, automating the moderation process."

    static let sqlServersText = "I developed multiple SQL servers to manage backend data for websites I created during my web development class."

    static let gameDevText = "I created small games using C++, exploring gameplay mechanics and algorithms to make engaging experiences."

    static let moveToColoradoText = "After earning my Associate of Science in Information Technology, I moved to Colorado to study Creative Technology and Design at CU Boulder."

    static let vrDevelopmentText = "At CU, I learned to develop virtual reality environments using A-Frame, integrating 3D assets to build immersive experiences."

    static let arduinoProgrammingText = "I explored Arduino programming, building systems to automate hardware tasks and perform specific actions."

    static let cppClassText = "Currently, I am taking a C++ class focused on low-level programming concepts like binary operations and bit manipulation."

    static let vrIntroClassText = "In my virtual reality class, I write C# scripts that enable object interactions within virtual environments."

    static let futureText = "With a strong foundation in software development, VR, and hardware programming, I am excited about creating user-centered and innovative technology."

}

// Individual Info Pages
struct TheBeginning: View {
    var body: some View {
        VStack {
            Text("The Beginning")
                .font(.title)
                .underline()
                .padding(.bottom, 5)
            Image("RVCC")
                .imageScale(.small)
            Text(Constants.journeyText)
                .padding()
                .multilineTextAlignment(.leading)
        }
        .background(Color.yellow.opacity(0.1))
        .cornerRadius(10)
    }
}
struct DiscordBotProject: View {
    var body: some View {
        VStack {
            Text("Discord Bot Project")
                .font(.headline)
                .italic()
                .padding(.bottom, 5)
            Image("discord")
                .imageScale(.small)
            Text(Constants.discordBotText)
                .padding()
                .background(Color.green.opacity(0.2))
                .cornerRadius(8)
        }
    }
}

struct SQLServerDevelopment: View {
    var body: some View {
        VStack {
            Text("SQL Server Development")
                .font(.title2)
                .foregroundColor(.blue)
                .padding(.bottom, 5)
            Text(Constants.sqlServersText)
                .padding()
                .lineLimit(nil)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
    }
}
struct GameDevelopment: View {
    var body: some View {
        VStack {
            Text("Game Development")
                .font(.headline)
                .padding(.bottom, 5)
            Text(Constants.gameDevText)
                .padding()
                .multilineTextAlignment(.center)
                .background(Color.red.opacity(0.1))
                .cornerRadius(5)
        }
    }
}
struct MovetoColorado: View {
    var body: some View {
        VStack {
            Text("Move to Colorado")
                .font(.title)
                .padding(.bottom, 5)
            Text(Constants.moveToColoradoText)
                .padding()
                .border(Color.purple, width: 2)
        }
    }
}
struct MyInfoPage6: View {
    var body: some View {
        VStack {
            Text("Virtual Reality Development")
                .font(.headline)
                .padding(.bottom, 5)
            Text(Constants.vrDevelopmentText)
                .padding()
                .background(Color.orange.opacity(0.3))
                .cornerRadius(12)
        }
    }
}
struct MyInfoPage7: View {
    var body: some View {
        VStack {
            Text("Arduino Programming")
                .font(.title)
                .foregroundColor(.green)
                .padding(.bottom, 5)
            Text(Constants.arduinoProgrammingText)
                .padding()
                .lineLimit(nil)
                .background(Color.blue.opacity(0.2))
                .cornerRadius(10)
        }
    }
}
struct MyInfoPage8: View {
    var body: some View {
        VStack {
            Text("C++ Class")
                .font(.headline)
                .padding(.bottom, 5)
            Text(Constants.cppClassText)
                .padding()
                .background(Color.pink.opacity(0.2))
                .cornerRadius(10)
        }
    }
}

struct MyInfoPage9: View {
    var body: some View {
        VStack {
            Text("Virtual Reality Class")
                .font(.headline)
                .padding(.bottom, 5)
            Text(Constants.vrIntroClassText)
                .padding()
                .background(Color.cyan.opacity(0.3))
                .cornerRadius(12)
        }
    }
}

struct MyInfoPage10: View {
    var body: some View {
        VStack {
            Text("Future Goals")
                .font(.title)
                .foregroundColor(.blue)
                .padding(.bottom, 5)
            Text(Constants.futureText)
                .padding()
                .background(Color.mint.opacity(0.2))
                .cornerRadius(8)
        }
    }
}
 
// Main View to navigate between pages
struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Color.white
                        .edgesIgnoringSafeArea(.all)
                    VStack(spacing: 20) {
                        Text("My Journey in Tech")
                            .font(.largeTitle)
                            .underline()
                            .padding()
                        
                        VStack {
                            NavigationLink(destination: MyInfoPage1()) {
                                Text("The Beginning\n")
                            }
                            NavigationLink(destination: MyInfoPage2()) {
                                Text("Discord Bot Project\n")
                            }
                            NavigationLink(destination: MyInfoPage3()) {
                                Text("SQL Server Development\n")
                            }
                            NavigationLink(destination: MyInfoPage4()) {
                                Text("Game Development\n")
                            }
                            NavigationLink(destination: MyInfoPage5()) {
                                Text("Move to Colorado\n")
                            }
                            NavigationLink(destination: MyInfoPage6()) {
                                Text("AR/VR Development\n")
                            }
                            NavigationLink(destination: MyInfoPage7()) {
                                Text("Arduino Program\n")
                            }
                            NavigationLink(destination: MyInfoPage8()) {
                                Text("C++ Class\n")
                            }
                            NavigationLink(destination: MyInfoPage9()) {
                                Text("Virtual Reality Class\n")
                            }
                            NavigationLink(destination: MyInfoPage10()) {
                                Text("Future Goals\n")
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }
}
