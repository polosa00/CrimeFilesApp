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
    
    @State private var title = ""
    @State private var imageTitle = ""
    @State private var subtitle: String? = nil
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack(spacing: 0) {
            CustomNavBarView(showBackButton: showBackButton, title: title, imageTitle: imageTitle, subtitle: subtitle)
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .onPreferenceChange(CustomNavBarTitlePreferenceKeys.self) { value in
            self.title = value
        }
        .onPreferenceChange(CustomNavBarSubTitlePreferenceKeys.self) { value in
            self.subtitle = value
        }
        .onPreferenceChange(CustomNavBarImageTitlePreferenceKeys.self) { value in
            self.imageTitle = value
        }
        .onPreferenceChange(CustomNavBarBackButtonHiddenPreferenceKeys.self) { value in
            self.showBackButton = !value
        }
    }
}

#Preview {
    CustomNavBarContainerView {
        ZStack {
            Color.brown.ignoresSafeArea()
            
            Text("hello")
                .customNavigationTitle("NewTitle")
                .customNavigationBarBackButtonHidden(true)
                .customNavigationSubTitle("Subtitle")
                .customNavigationImageTitle("BloodTracesExamination")
        }
    }
}
  
