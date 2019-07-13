//
//  Model.swift
//  Apixu
//
//  Created by Ngoc on 7/1/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//

import UIKit


struct Weather: Codable {
    var location: Location
    var current: Current
    
    struct Location: Codable {
        var name: String
        var country: String
    }
    
    
    struct Current: Codable {
        var last_updated: String
        var temp_c: Int
        var temp_f: Double
        var condition: Condition
    }
    
    
    struct Condition: Codable {
        var icon: String
    }
}




