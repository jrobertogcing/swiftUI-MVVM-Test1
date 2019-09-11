//
//  WeatherService.swift
//  One2
//
//  Created by Roberto Gonzalez on 9/9/19.
//  Copyright © 2019 Roberto Gonzalez. All rights reserved.
//

import Foundation


class WeatherService {
    func getWeather(city: String, completion: @escaping (Weather?) -> ()) {
        
        guard let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=fa5818c752f7fc9466a1d701731656d7") else {
            completion(nil)
            return }
        
        URLSession.shared.dataTask(with: url){data, response, error in
            
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            if let weatherResponse = weatherResponse {
                let weather = weatherResponse.main
                completion(weather)
            }else {
                completion(nil)
                
            }
        }.resume()
        
    }
    
}
