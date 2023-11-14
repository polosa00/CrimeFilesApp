//
//  AppTabBarView.swift
//  CrimeFilesApp
//
//  Created by Kate Kashko on 10.11.2023.
//

import SwiftUI

struct AppTabBarView: View {
    @State private var selection = "home"
    @State private var tabSelection: TabBarItem = .home
    
    var body: some View {
        
        CustomTabBarContainerView(selection: $tabSelection) {
            Color.blue.ignoresSafeArea()
                .tabBarItem(tab: .home, selection: $tabSelection)
            FavoriteView()
                .tabBarItem(tab: .favorites, selection: $tabSelection)
        }
        
    }
}




#Preview {
    AppTabBarView()
}


extension AppTabBarView {
    private var defaultTabBar: some View {
        TabView(selection: $selection) {
            Color.red
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            Color.blue
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorite")
                }
            
            Color.orange
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

