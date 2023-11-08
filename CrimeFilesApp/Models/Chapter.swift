//
//  Chapter.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 6.11.23.
//

import SwiftUI

struct Chapter {
    let title: String
    let imageName: String
    let titleImage: String
    let section: [Section]
}

struct Section {
    let title: String
    let imageName: String
    let subSection: [SubSection]?
    let data: String
}

struct SubSection {
    let title: String
    let imageName: String
    let data: String
}
