//
//  InformationRowView.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 7.11.23.
//

import SwiftUI

struct InformationRowView: View {
        
    let rowsDetails: [RowDetailInspection]
    let title: String
    let imageTitle:String
    
    var body: some View {
        
        NavigationStack {
            ZStack {
//                BackgroundView()
//                    .ignoresSafeArea()
                
                List {
                    ForEach(rowsDetails, id: \.title) { information in
                        NavigationLink {
                            InformationView(title: information.title, mainText: information.data)
                        } label: {
                            CellView(title: information.title, imageName: information.imageName)
                        }
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                    }
                }
                .listStyle(.plain)
            }
//            .navigationTitle(title)
        }
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarLeading) {
                VStack {
                
                        Text(title)
                            .font(.custom("AlegreyaSC-Medium", size: 22))
                            .bold()
                            .foregroundColor(.black)
                            .lineLimit(nil)
                }
                .frame(height: 90)
            }
        }
    }
    
}



#Preview {
    InformationRowView(
        rowsDetails:
            [
                RowDetailInspection(
                    title: "Text title",
                    imageName: "testImage",
                    data: "Fill in in the future!"
                )
            ],
        title: "Title",
        imageTitle: "titleImage"
    )
}
