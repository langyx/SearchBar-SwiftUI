//
//  Landmark.swift
//  MySearchBar
//
//  Created by Yannis Lang on 15/04/2020.
//  Copyright © 2020 Yannis Lang. All rights reserved.
//

import Foundation

struct Landmark : Hashable {
    enum Category : String {
        case Lake
        case River
        case Mountain
    }
    
    var title : String
    var category : Category
    var image : String
}
