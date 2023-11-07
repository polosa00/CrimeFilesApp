//
//  InformationFiew.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 6.11.23.
//

import SwiftUI

struct InformationView: View {
    
    let title: String
    let mainText: String
    
    var body: some View {
        ZStack {
//            BackgroundView()
//                .ignoresSafeArea()
            NavigationStack {
                ScrollView {
                    VStack(){
                        Text(mainText)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.black)
                            .padding(.top)
                            .padding()
                        Spacer()
                    }
                    .background(content: {
                        Color.gray.opacity(0.3)
                    })
                    .cornerRadius(15)
                    .padding(.horizontal, 10)
                    .shadow(color: .white.opacity(0.8) ,radius: 10, x: 5, y: 15)
                    
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {

                    VStack {
                        HStack {

                            Text(title)
                                .font(.custom("AlegreyaSC-Medium", size: 22))
                                .bold()
                                .frame(maxHeight: 100)
                                .foregroundColor(.black)
                                .lineLimit(nil)
                        }
                        .frame(height: 105)
                    }
                    .frame(height: 105)

                }
            }
        }
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView(title: "Title", mainText: "Main Text")
    }
}
