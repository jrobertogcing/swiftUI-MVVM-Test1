//
//  Weather.swift
//  One2
//
//  Created by Roberto Gonzalez on 9/9/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import Foundation

struct WeatherResponse:Decodable {
    let main: Weather
}

struct Weather:Decodable {
    var temp: Double?
    var humidity: Double?
}

