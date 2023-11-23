//
//  FavoriteView.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 8.11.23.
//

import SwiftUI

struct FavoriteView: View {
    let title = "Избранное"
    let sections = ["Favorite1", "Favorite2","Favorite3","Favorite4"]
    let imageTitle = "mockImage"
    
    var body: some View {
        CustomNavView{
            Color("Main")
                .ignoresSafeArea()
            VStack {
                ScrollView {
                    ForEach(sections, id: \.self) { section in
                        CustomNavLink (
                            destination:
                                ContentView(title: section, mainText: section)
                                .customNavigationTitle("Custom \(section)")
                        )
                        {  // Start custom Label here
                            CellView(title: section, imageName: imageTitle)
                        } // End Custom label here
                        .padding(.horizontal, 16)
                        
                    }
                }
            }
            .customNavigationFavoriteButtonHidden(true)
            .customNavigationTitle(title)
            .customNavigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    FavoriteView()
}
