//
//  SettingsView.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 14.11.23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color("Main")
                .ignoresSafeArea()
            VStack {
                Text("Настройки здейсь")
                    .foregroundColor(.white)
                
            }
        }
    }
}

#Preview {
    SettingsView()
}
