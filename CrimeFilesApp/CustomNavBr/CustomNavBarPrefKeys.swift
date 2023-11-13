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

struct CustomNavBarSubTitlePreferenceKeys: PreferenceKey {
    
    static var defaultValue: String? = nil
    
    static func reduce(value: inout String?, nextValue: () -> String?) {
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

// test

extension View {
    
    func customNavigationTitle(_ title: String) -> some View {
        preference(key: CustomNavBarTitlePrefKeys.self, value: title)
    }
    
    func customNavigationSubTitle(_ subTitle: String?) -> some View {
        preference(key: CustomNavBarSubTitlePreferenceKeys.self, value: subTitle)
    }
    
    func customNavigationImageTitle(_ imageTitle: String) -> some View {
        preference(key: CustomNavBarImageTitlePreferenceKeys.self, value: imageTitle)
    }
    
    func customNavigationBarBackButtonHidden(_ hidden: Bool) -> some View {
        preference(key: CustomNavBarBackButtonHiddenPreferenceKeys.self, value: hidden)
    }
    
    func customNavBarItems(title: String = "", subTitle: String? = nil, imageTitle: String = "", hidden: Bool = false) -> some View {
        self
            .customNavigationTitle(title)
            .customNavigationSubTitle(subTitle)
            .customNavigationImageTitle(imageTitle)
            .customNavigationBarBackButtonHidden(hidden)
    }
}
