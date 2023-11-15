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
    
    let chapters = ["Подготовка к осмотру места происшествия", "Осмотры по объектам", "Отдельные следственные действия при осмотре"]
    let imageTitle = "mockImage"
    
    var body: some View {
        CustomNavView {
            ZStack {
                Color("Main")
                    .ignoresSafeArea()
                GradientView()
                    .position(x: 130, y: -40)
                
                ScrollView {
                    VStack(spacing: 16) {
                        TextField(text: $textTitle) {
                            HStack {
                                Text("Поиск...")
                            } // будем кастомный код
                        }
                        .padding(8)
                        .background(Color.white.opacity(0.8))
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 4)
                            
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
//                        Spacer()
                        Spacer()
                        Image("detective")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 105, height: 110)
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
