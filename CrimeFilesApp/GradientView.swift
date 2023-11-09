//
//  GradientView.swift
//  CrimeFilesApp
//
//  Created by Kate Kashko on 9.11.2023.
//

import SwiftUI

struct GradientView: View { //Получается херня. Совсем не так как в фигме(
    
    var body: some View {
//        ZStack{
//            Color("Main")
//                .ignoresSafeArea()
            Rectangle()
                .overlay(
                    LinearGradient(
                        gradient: Gradient(
                            colors: [
                                Color(red: 37 / 255, green: 61 / 255, blue: 85 / 255, opacity: 0.8),
                                Color(red: 104 / 255, green: 144 / 255, blue: 170 / 255, opacity: 0.8),
                                Color(red: 216 / 255, green: 184 / 255, blue: 165 / 255, opacity: 0.8),
                                Color(red: 220 / 255, green: 143 / 255, blue: 55 / 255, opacity: 0.8)
                            ]
                        ),
                        startPoint: .topTrailing,
                        endPoint: .bottomLeading
                    )
                )
                .clipShape(Rectangle())
                .frame(width: 350, height: 350)
                .cornerRadius(50)
                .position(x: 450, y: 140)
                .rotationEffect(Angle(degrees: -55), anchor: .center)
        }
}
//    }


#Preview {
    GradientView()
}

