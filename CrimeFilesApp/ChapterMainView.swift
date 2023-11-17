//
//  ChapterMainView.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 8.11.23.
//

import SwiftUI

struct ChapterMainView: View {
    
    @Environment(\.dismiss) var dismiss
    
    let title: String
    let sections = ["Section1", "Section2", "Section3", "Section4", "Section5", "Section6", "Section7"]
    let imageTitle = "mockImage"
    
    var body: some View {
        ZStack {
            Color("Main")
                .ignoresSafeArea()
            VStack {
                ScrollView {
                    LazyVStack {
                        ForEach(sections, id: \.self) { section in
                            CustomNavLink (
                                destination:
                                    SectionView(title: section)
                                    .customNavigationTitle(" \(section)")
                            )  {
                                CellView(title: section, imageName: imageTitle)
                            }
                            .padding(.horizontal, 16)
                        }
                    }
                }
            }
            .customNavigationFavoriteButtonHidden(true)
        }

    }
}

#Preview {
    ChapterMainView(title: "chapterTitle")
}
