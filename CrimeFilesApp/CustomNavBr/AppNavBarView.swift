//
//  AppNavBarView.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 9.11.23.
//

import SwiftUI

struct AppNavBarView: View {
    var body: some View {
        
//        defaultNavView
        CustomNavView {
            ZStack {
                Color.orange.ignoresSafeArea()
                
                CustomNavLink(
                    destination: 
                        Text("Destination")
                        .customNavigationTitle("New Titile")
                        .customNavigationImageTitle("mockImage")
                ) {
                    Text("Navigate")
                }
                
            }
            .customNavigationTitle("Custom Title")
            .customNavigationImageTitle("BloodTracesExamination")
            .customNavigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    AppNavBarView()
}


extension AppNavBarView {
    private var defaultNavView: some View {
        NavigationView {
            ZStack {
                Color.red.ignoresSafeArea()
                
                NavigationLink {
                    Text("Destination")
                        .navigationTitle("Title 2")
                        .navigationBarBackButtonHidden(false)
                } label: {
                    Text("Navigate")
                }

            }
            .navigationTitle("Nav Title here")
        }
    }
}
