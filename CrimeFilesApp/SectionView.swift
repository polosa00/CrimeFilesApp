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
                        NavigationLink {
                            ContentView(title: section, mainText: section)
                                .navigationBarBackButtonHidden(true)
                        } label: {
                            CellView(title: section, imageName: imageTitle)
                        }
                        .padding(.horizontal, 16)

                    }
                }
                .navigationTitle(title)
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .onTapGesture {
                            dismiss()
                        }
                }
        }
        }

    }
}

#Preview {
    SectionView(title: "Title")
}
