//
//  CellView.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 7.11.23.
//

import SwiftUI

struct CellView: View {
    
    let fontSizeForRow: CGFloat = 20
    let title: String
    let imageName: String
    
    var body: some View {
        ZStack{
            HStack(spacing: 10){
                ZStack{
                   Rectangle()
                        .frame(width: 60, height: 60)
                        .cornerRadius(10)
                        .foregroundColor(.white.opacity(0.5))
                        
                    Image(imageName)
                        .resizable()
                        .frame(width: 45, height: 45)
                    
                }
                .padding(.leading, 10)

                Text(title)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(0)
                    .font(.custom("AlegreyaSC-Medium", size: fontSizeForRow))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 100)
            .background{
                Color("Cell")
              
            }
            .cornerRadius(10)
        }
        
    }
}

#Preview {
    CellView(title: "Подготовка к осмотру места происшествия", imageName: "Подготовка к осмотру места происшествия_3")
}
