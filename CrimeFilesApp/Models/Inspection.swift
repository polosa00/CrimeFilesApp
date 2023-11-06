//
//  Inspection.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 6.11.23.
//

import SwiftUI

struct Inspection {
    let title: String
    let imageName: String
    let titleImage: String
    let rows: [RowInspection]
}

struct RowInspection {
    let title: String
    let imageName: String
    let rowsDetails: [RowDetailInspection]?
    let data: String
}

struct RowDetailInspection {
    let title: String
    let imageName: String
    let data: String
}
