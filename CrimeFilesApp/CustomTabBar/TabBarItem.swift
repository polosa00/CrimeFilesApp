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
    
    var color: Color {
        switch self {
        case .home: return Color("Main")
        case .favorites: return Color("Main")
        case .settings: return Color("Main")
        }
    }
}
