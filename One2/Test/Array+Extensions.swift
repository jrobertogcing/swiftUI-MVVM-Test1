//
//  Array+Extensions.swift
//  One2
//
//  Created by Roberto Gonzalez on 9/7/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import Foundation

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}

