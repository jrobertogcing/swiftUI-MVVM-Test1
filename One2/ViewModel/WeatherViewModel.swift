//
//  WeatherViewModel.swift
//  One2
//
//  Created by Roberto Gonzalez on 9/9/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

// Just for this
class WeatherViewModel: ObservableObject {
    
//    let didChange = PassthroughSubject<WeatherViewModel, Never>()

    private var weatherService : WeatherService!
    
    @Published var weather = Weather()
    
    init() {
        self.weatherService = WeatherService()
//        self.didChange.send(self)

    }
    
    var temperature: String {
        
        if let temp = self.weather.temp{
            return String(format: "%.0f",temp)
        } else {
            return ""
            
        }
    }
    
    var humidity: String {
        
        if let humidity = self.weather.humidity{
            return String(format: "%.0f",humidity)
        } else {
            return ""
            
        }
    }

    var cityName: String = ""
    
    func search() {
        if let city = self.cityName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) {
            fetchWeather(by: city)
        }
        
    }
    
    
    private func fetchWeather(by city:String)  {
        self.weatherService.getWeather(city: city) { weather in
            if let weather = weather {
                DispatchQueue.main.async {
                    self.weather = weather
                }
            }
        }
    }
}
