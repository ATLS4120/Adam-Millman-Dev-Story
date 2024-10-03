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
                PageView()
            }
        }
    }
}

struct PageView: View {
    @State private var currentPage = 0

    let views: [AnyView] = [
        AnyView(StartingView()),
        AnyView(TheBeginningView()),
        AnyView(DiscordBotView()),
        AnyView(SQLServerView()),
        AnyView(GameDevelopmentView()),
        AnyView(MoveToColoradoView()),
        AnyView(VRDevelopmentView()),
        AnyView(ArduinoProgrammingView()),
        AnyView(CppClassView()),
        AnyView(VRClassView()),
        AnyView(FutureGoalsView())
    ]
    
    var body: some View {
        VStack {
            TabView(selection: $currentPage) {
                ForEach(0..<views.count, id: \.self) { index in
                    views[index]
                        .tag(index)
                        .onTapGesture {
                            withAnimation {
                                currentPage = index
                            }
                        }
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(maxWidth: .infinity, maxHeight: .infinity * 0.75)

            HStack {
                Spacer()
                ForEach(0..<views.count, id: \.self) { index in
                    Circle()
                        .fill(index == currentPage ? Color.white : Color.white.opacity(0.5))
                        .frame(width: 8, height: 8)
                }
                Spacer()
            }
            .padding()
            .background(Color.black)
            .cornerRadius(5)
            .padding(.bottom)
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}






