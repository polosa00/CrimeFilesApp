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
            HStack(){
                Spacer()
                Spacer()
                Image(imageName)
                    .resizable()
                    .frame(width: 45, height: 45)
                Spacer()
                Spacer()
                Text(title)
                    .multilineTextAlignment(.center) // ровняет все элементы в строках
                    .lineSpacing(0)
                    .font(.custom("AlegreyaSC-Medium", size: fontSizeForRow))
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity)
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 100)
            .background{
                Color.white.opacity(0.2)
                LinearGradient(
                    gradient: Gradient(
                        colors: [
                            Color(red: 241 / 255, green: 231 / 255, blue: 196 / 255, opacity: 0.6),
                            Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.5),
                            Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.6)
                        ]
                    ),
                    startPoint: .top,
                    endPoint: .bottom
                )
            }
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 5, y: 15)
//            .padding(0)
        }
        
    }
}

#Preview {
    CellView(title: "Title", imageName: "Подготовка к осмотру места происшествия_3")
}
