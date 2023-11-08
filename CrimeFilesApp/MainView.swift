//
//  MainView.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 6.11.23.
//

import SwiftUI

struct MainView: View {
    let chapters = ["Chapter1", "Chapter2", "Chapter3"]
    let imageTitle = "mockImage"
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack {
                        Spacer()
                        ForEach(chapters, id: \.self) { title in
                            NavigationLink {
                                ChapterMainView(title: title)
                            } label: {
                                CellView(title: title, imageName: imageTitle)
                            }
                            .padding(.vertical, 8)
                            .padding(.horizontal, 20)
                        }
                        Spacer()
                        Image("detective")
                            .resizable()
                            .frame(width: 105, height: 114)
                        Spacer()
                    }
                    .navigationTitle("CrimeFiles")
                }
                
            }
        }
    }
}

#Preview {
    MainView()
}
