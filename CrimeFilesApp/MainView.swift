//
//  MainView.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 6.11.23.
//

import SwiftUI

struct MainView: View {
    
    @State private var textTitle = ""
    
    let chapters = ["Chapter1", "Chapter2", "Chapter3"]
    let imageTitle = "mockImage"
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack(spacing: 20) {
                        Spacer()
                        TextField(text: $textTitle) {
                            HStack {
                                Image(systemName: "magnifyingglass")
                                Text("Search...")
                            }
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                            
                        ForEach(chapters, id: \.self) { title in
                            NavigationLink {
                                ChapterMainView(title: title)
                            } label: {
                                CellView(title: title, imageName: imageTitle)
                            }
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
