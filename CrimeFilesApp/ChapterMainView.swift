//
//  ChapterMainView.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 8.11.23.
//

import SwiftUI

struct ChapterMainView: View {

    let title: String
    let sections = ["Section1", "Section2", "Section3", "Section4", "Section5", "Section6", "Section7"]
    let imageTitle = "mockImage"
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack {
                    ForEach(sections, id: \.self) { section in
                        NavigationLink {
                            SectionView(title: section)
                        } label: {
                            CellView(title: section, imageName: imageTitle)
                        }
                        .padding(.vertical, 8)
                        .padding(.horizontal, 20)
                    }
                }
                .navigationTitle(title)
          
                
            }
        }
    }
}

#Preview {
    ChapterMainView(title: "chapterTitle")
}
