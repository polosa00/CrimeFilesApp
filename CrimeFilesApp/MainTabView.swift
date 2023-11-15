//
//  MainTabView.swift
//  CrimeFilesApp
//
//  Created by Kate Kashko on 9.11.2023.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selection = "home"
    @State private var tabSelection: TabBarItem = .home
    
    var body: some View {
        
        
        CustomTabBarContainerView(selection: $tabSelection) {
            MainView()
                .tabBarItem(tab: .home, selection: $tabSelection)
            FavoriteView()
                .tabBarItem(tab: .favorites, selection: $tabSelection)
            SettingsView()
                .tabBarItem(tab: .settings, selection: $tabSelection)
            
        }
    }
}

#Preview {
    MainTabView()
}
