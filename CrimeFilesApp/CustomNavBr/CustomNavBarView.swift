//
//  CustomNavBarView.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 9.11.23.
//

import SwiftUI

struct CustomNavBarView: View {
    
    @Environment(\.dismiss) var dismiss
    
    let showBackButton:Bool
    
    let title:String
    let imageTitle: String
    let subtitle: String?
    var body: some View {
        HStack {
            
            if showBackButton {
                backButton
            }
            
            Spacer()
            
            titleSection
            Spacer()
            Spacer()
            Spacer()
            backButton
                .opacity(0)
        }
        .padding()
        .foregroundColor(.white)
        .font(.headline )
        .background(
            Color("Main").ignoresSafeArea(edges: .top)
        )
        .accentColor(.white)
    }
}

#Preview {
    VStack {
        CustomNavBarView(showBackButton: true, title: "Titile dsfsdf dsf", imageTitle: "mockImage", subtitle: "")
        Spacer()
    }
    
}

extension CustomNavBarView {
    private var backButton: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "chevron.left")
        }
    }
    
    private var titleSection: some View {
        HStack {
        
            Image(imageTitle)
                .resizable()
                .frame(width: 50, height: 50)
            
            VStack(spacing: 4) {
                Text(title)
                    .font(.title)
                    .fontWeight(.semibold)
                Text(subtitle ?? "")
            }
        }
    }

}

