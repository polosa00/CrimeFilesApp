//
//  AppTabBarView.swift
//  CrimeFilesApp
//
//  Created by Kate Kashko on 10.11.2023.
//

import SwiftUI

struct AppTabBarView: View {
    // MARK: -  PROPERTY
    @State private var selection: String = "home"
    @State private var tabSelection: TabBarItem = .home
    
    // MARK: -  BODY
    var body: some View {
        CustomTabBarContainerView(selection: $tabSelection) {
            MainView()
                .tabBarItem(tab: .home, selection: $tabSelection)
            
            FavoriteView()
                .tabBarItem(tab: .favorites, selection: $tabSelection)
            
            ContentView(title: "df", mainText: "fd")
                .tabBarItem(tab: .settings, selection: $tabSelection)
            
        }
    }
}

#Preview {
    AppTabBarView()
}

extension AppTabBarView {
    private var defaultTabView: some View {
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
        } //: TAB
    }
}
