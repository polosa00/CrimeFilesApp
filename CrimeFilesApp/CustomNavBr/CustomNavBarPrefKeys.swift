//
//  CustomNavBarPrefKeys.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 10.11.23.
//

import Foundation
import SwiftUI



struct CustomNavBarTitlePrefKeys: PreferenceKey {
    
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}

struct CustomNavBarImageTitlePreferenceKeys: PreferenceKey {
    
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}


struct CustomNavBarBackButtonHiddenPreferenceKeys: PreferenceKey {
    
    static var defaultValue: Bool = false
    
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}

struct CustomNavBarFavoriteButtonHiddenPreferenceKeys: PreferenceKey {
    
    static var defaultValue: Bool = false
    
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}


extension View {
    
    func customNavigationTitle(_ title: String) -> some View {
        preference(key: CustomNavBarTitlePrefKeys.self, value: title)
    }
    
    func customNavigationImageTitle(_ imageTitle: String) -> some View {
        preference(key: CustomNavBarImageTitlePreferenceKeys.self, value: imageTitle)
    }
    
    func customNavigationBarBackButtonHidden(_ hidden: Bool) -> some View {
        preference(key: CustomNavBarBackButtonHiddenPreferenceKeys.self, value: hidden)
    }
    
    func customNavigationFavoriteButtonHidden(_ hidden: Bool) -> some View {
        preference(key: CustomNavBarFavoriteButtonHiddenPreferenceKeys.self, value: hidden)
    }
    
    func customNavBarItems(title: String = "", imageTitle: String = "", hiddenBackButton: Bool = false, hiddenFavoriteButton: Bool = false) -> some View {
        self
            .customNavigationTitle(title)
            .customNavigationImageTitle(imageTitle)
            .customNavigationBarBackButtonHidden(hiddenBackButton)
            .customNavigationFavoriteButtonHidden(hiddenFavoriteButton)
    }
}
