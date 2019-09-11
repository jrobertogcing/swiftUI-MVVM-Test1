//
//  Hike.swift
//  One2
//
//  Created by Roberto Gonzalez on 9/7/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import Foundation
import SwiftUI

struct Hike: Identifiable{
    
    let id = UUID()
    let name: String
    let imageURL:String
    let miles: Double
    
    
}
extension Hike {
    
    static func all()-> [Hike] {
        
        return[
            Hike(name: "Yosemite", imageURL: "yosemite", miles: 3220.23232),
            Hike(name: "Malinche", imageURL: "malinche", miles: 1032.32243),
            Hike(name: "Iztazihuatl", imageURL: "izta", miles: 2323.2323)
            ]
        
            }
}

