//
//  CustomNavBarContainerView.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 9.11.23.
//

import SwiftUI

struct CustomNavBarContainerView<Content: View>: View {
    let content: Content
    
    @State private var showBackButton = true
    @State private var showFavoriteButton = true
    
    @State private var title = ""
    @State private var imageTitle = ""
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack(spacing: 0) {
            CustomNavBarView(showBackButton: showBackButton, showFavoriteButton: showFavoriteButton, title: title, imageTitle: imageTitle)
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .onPreferenceChange(CustomNavBarTitlePrefKeys.self) { value in
            self.title = value
        }
        .onPreferenceChange(CustomNavBarImageTitlePreferenceKeys.self) { value in
            self.imageTitle = value
        }
        .onPreferenceChange(CustomNavBarBackButtonHiddenPreferenceKeys.self) { value in
            self.showBackButton = !value
        }
        .onPreferenceChange(CustomNavBarFavoriteButtonHiddenPreferenceKeys.self, perform: { value in
            self.showFavoriteButton = !value
        })
    }
}

#Preview {
    CustomNavBarContainerView {
        ZStack {
            Color.brown.ignoresSafeArea()
            
            Text("hello")
                .customNavigationTitle("NewTitle")
                .customNavigationBarBackButtonHidden(true)
                .customNavigationImageTitle("BloodTracesExamination")
        }
    }
}
  
