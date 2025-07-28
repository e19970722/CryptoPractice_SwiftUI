//
//  CryptoPracticeApp.swift
//  CryptoPractice
//
//  Created by Yen Lin on 2025/4/23.
//

import SwiftUI

@main
struct CryptoPracticeApp: App {
    
    @StateObject var vm = HomeViewModel()
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color.theme.accent)]
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }.environmentObject(vm)
        }
    }
}
