//
//  TabBarItem.swift
//  CrimeFilesApp
//
//  Created by Kate Kashko on 10.11.2023.
//

import Foundation
import SwiftUI

enum TabBarItem: Hashable {
    case home, favorites, settings
    
    var iconName: String {
        switch self {
        case .home: return "house"
        case .favorites: return "heart"
        case .settings: return "gear"
       
        }
    }
    
    var title: String {
        switch self {
        case .home: return "Главная"
        case .favorites: return "Избранное"
        case .settings: return "Настройки"
        }
    }

    
    var view: any View {
        switch self {
        case .home: return MainView()
        case .favorites: return FavoriteView()
        case .settings: return ContentView(title: "hi", mainText: "hi")
        }
    }
}

