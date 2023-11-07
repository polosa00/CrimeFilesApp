//
//  ContentView.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 6.11.23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = InspectionViewModel()
    
    var body: some View {
        ZStack {
            NavigationStack {
                ZStack{
                    
//                    MainBackGroundView()
//                        .ignoresSafeArea()

                    List(viewModel.inspections, id: \.title) { inspectionDetailViewModel in
                        NavigationLink {
                            InspectionListView(
                                inspectionList: inspectionDetailViewModel.rows,
                                title: inspectionDetailViewModel.title,
                                imageTitle: inspectionDetailViewModel.titleImage
                            )
                            
                        } label: {
                            CellView(
                                title: inspectionDetailViewModel.title,
                                imageName: inspectionDetailViewModel.imageName
                            )
                        }
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                    }
                    .padding(.top, 100)
                    .listStyle(.plain)
                    
                }
//                .customNavigation/BarBackButtonHidden(false)
            }
            .tint(.black)
            
        }
    }
}

#Preview {
    ContentView()
}
