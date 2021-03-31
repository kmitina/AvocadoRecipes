//
//  FactsModel.swift
//  Avocados
//
//  Created by DVKSH on 30.03.21.
//

import SwiftUI

// MARK: - FACT MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
