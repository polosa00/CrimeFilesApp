//
//  SectionView.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 8.11.23.
//

import SwiftUI

struct SectionView: View {
    let title: String
    let sections = ["SubSection1", "SubSection2","SubSection3","SubSection4","SubSection5","SubSection6"]
    let imageTitle = "mockImage"
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(sections, id: \.self) { section in
                    NavigationLink {
                        ContentView(title: section, mainText: section)
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

#Preview {
    SectionView(title: "Title")
}
