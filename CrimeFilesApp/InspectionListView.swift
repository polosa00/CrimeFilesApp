//
//  InspectionListView.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 7.11.23.
//

import SwiftUI

struct InspectionListView: View {
        
    let inspectionList: [RowInspection]
    let title: String
    let imageTitle: String
    
    var body: some View {
        NavigationStack {
            ZStack {
//                BackgroundView()
//                    .ignoresSafeArea()
                List(inspectionList, id: \.title) { inspection in
                   
                    NavigationLink {
                        
                        if inspection.rowsDetails == nil {
                            InformationView(
                                title: inspection.title,
                                mainText: inspection.data
                            )
                        } else {
                            InformationRowView(rowsDetails: inspection.rowsDetails ??
                                [RowDetailInspection(title: "Test", imageName:  "testImage", data: "Some data..." )],
                                               title: inspection.title, imageTitle: ""
                            )
                            
                        }
                    } label: {
                        CellView(
                            title: inspection.title,
                            imageName: inspection.imageName
                        )
                        
                    }
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
            }
        }
        .tint(.black)
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarLeading) {
                HStack {
                    
                    Image(imageTitle)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text(title)
                        .font(.custom("AlegreyaSC-Medium", size: 22))
                        .bold()
                        .lineSpacing(0)
                        .foregroundColor(.black)
                        .lineLimit(nil)
                }
                .frame(height: 90)  // строка не съедается
            }
            
        }
        
        
    }
}

struct TestView: View {
    var body: some View {
        Text("testView")
    }
}

#Preview {
    InspectionListView(inspectionList: [RowInspection(title: "DD", imageName: "", rowsDetails: nil, data: "asd")], title: "sad", imageTitle: "")
}
