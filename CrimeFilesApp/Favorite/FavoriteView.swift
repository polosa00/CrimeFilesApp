//
//  FavoriteView.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 8.11.23.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        ZStack {
            Color("Main")
                .ignoresSafeArea()
            VStack {
                Text("Избранное здесь")
                    .foregroundColor(.white)
                
            }
        }
    }
}

#Preview {
    FavoriteView()
}
