//
//  MainView.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 6.11.23.
//

import SwiftUI

struct MainView: View {
    
    @State private var textTitle = ""
    @State private var searchText = ""
    
    let chapters = ["Chapter1", "Chapter2", "Chapter3"]
    let imageTitle = "mockImage"
    
    var body: some View {
        CustomNavView {
            ZStack {
                Color("Main")
                    .ignoresSafeArea()
                GradientView()
                ScrollView {
                    VStack(spacing: 16) {
//                        Spacer()
//                        TextField(text: $textTitle) {
//                            HStack {
//                                Image(systemName: "magnifyingglass")
//                                Text("Search...")
//                            }
//                        }
//                        .padding()
//                        .background(Color.white.opacity(0.8))
//                        .cornerRadius(10)
//                        .padding(.horizontal, 20)
//                        .padding(.bottom, 10)
                            
                        ForEach(chapters, id: \.self) { title in
                            CustomNavLink (
                                destination:
                                    ChapterMainView(title: title)
                                    .customNavigationTitle("Custom \(title)")
                                    .customNavigationImageTitle("mockImage")
                                    .customNavigationSubTitle("Потом уберем - это тестовое")
                            )
                         {
                                CellView(title: title, imageName: imageTitle)
                            }
                            .padding(.horizontal, 16)
                        }
                        Spacer()
                        Spacer()
                        Image("detective")
                            .resizable()
                            .frame(width: 105, height: 114)
                        Spacer()
                    }
                    .searchable(text: $searchText, prompt: "Search...")
                    .customNavigationBarBackButtonHidden(true)
                    .navigationTitle("Справочник")
                    .navigationBarTitleDisplayMode(.inline)
                    
                    
                    
                }
            }
        }
    }
}

#Preview {
    MainView()
}
