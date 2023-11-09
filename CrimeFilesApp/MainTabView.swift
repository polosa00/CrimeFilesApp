//
//  MainTabView.swift
//  CrimeFilesApp
//
//  Created by Kate Kashko on 9.11.2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            MainView()
                .tabItem {
                    Image(systemName: "house")
                }
            Text("favorit")
                .tabItem {
                    Image(systemName: "star")
                }
            Text("info")
                .tabItem {
                    Image(systemName: "info.circle")
                }
        }
        .accentColor(.yellow)
    }
}

#Preview {
    MainTabView()
}
