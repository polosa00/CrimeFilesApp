//
//  InspectionViewModel.swift
//  CrimeFilesApp
//
//  Created by Александр Полочанин on 7.11.23.
//

import Foundation

final class InspectionViewModel: ObservableObject {
    
    @Published var inspections: [Chapter]
    
    init() {
        inspections = DataBase().inspections
    }
}
