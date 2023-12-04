//
//  SectionView.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 8.11.23.
//

import SwiftUI

struct SectionView: View {
    
    @Environment(\.dismiss) var dismiss
    
    let title: String
    let sections = ["SubSection1", "SubSection2","SubSection3","SubSection4","SubSection5","SubSection6"]
    let imageTitle = "mockImage"
    
    var body: some View {
        ZStack {
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
        }

    }
}

#Preview {
    SectionView(title: "Title")
}
