//
//  Home_HarmonyApp.swift
//  Home_Harmony
//
//  Created by Daniel Madjar on 3/18/24.
//

import SwiftUI

@main
struct Home_HarmonyApp: App {
    @StateObject var viewModel = MainViewModel()
    
    var body: some Scene {
        WindowGroup {
            if viewModel.appStateSelection == 0 {
                LoginView()
                    .environmentObject(viewModel)
            } else if viewModel.appStateSelection == 1 {
                TabView {
                    FamilyView()
                        .tabItem {
                            Label("Families", systemImage: "house")
                        }
                    
                    FriendsView()
                        .tabItem {
                            Label("Friends", systemImage: "person.2")
                        }
                }
                .environmentObject(viewModel)
            }
        }
    }
}
