//
//  CryptoPracticeApp.swift
//  CryptoPractice
//
//  Created by 金融研發一部-iOS-陳衍霖 on 2025/4/23.
//

import SwiftUI

@main
struct CryptoPracticeApp: App {
    @StateObject var vm = HomeViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }.environmentObject(vm)
        }
    }
}
