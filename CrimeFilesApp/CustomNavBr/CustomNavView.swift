//
//  CustomNavView.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 9.11.23.
//

import SwiftUI

struct CustomNavView<Content: View>: View {
    
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        
        NavigationView {
            CustomNavBarContainerView {
                ZStack {
                    content
                }
                .navigationBarHidden(true)
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }

    }
}

#Preview {
    CustomNavView {
        Color.red.ignoresSafeArea()
    }
    
}

extension UINavigationController {
    open override func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = nil
    }
}
