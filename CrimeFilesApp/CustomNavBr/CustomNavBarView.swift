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
    let showFavoriteButton: Bool
    
    let title:String
    let imageTitle: String
    var body: some View {
        HStack {
            
            if showBackButton {
                backButton
            }
            Spacer()
            titleSection
            Spacer()
            if showFavoriteButton {
                favoriteButton
            }
          
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
        CustomNavBarView(showBackButton: true, showFavoriteButton: true, title: "Titile dsfsdf dsf", imageTitle: "mockImage")
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
    
    private var favoriteButton: some View {
        Button {
            // Code for adding favorite
        } label: {
            Image(systemName: "star.fill")
                .font(.title2)
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
            }
        }
    }

}

