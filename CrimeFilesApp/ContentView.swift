//
//  InformationFiew.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 6.11.23.
//

import SwiftUI

struct ContentView: View {
    
    let title: String
    let mainText: String
    
    var body: some View {
        VStack {
            Text("ContentView")
        }
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(title: "Title", mainText: "Main Text")
    }
}
