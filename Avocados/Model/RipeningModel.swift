//
//  RipeningModel.swift
//  Avocados
//
//  Created by DVKSH on 31.03.21.
//

import SwiftUI

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}

