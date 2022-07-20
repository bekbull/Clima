//
//  WeatherModel.swift
//  Clima
//
//  Created by Bekbull on 17.07.2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bold"
        case 300...321:
            return "cloud.bolt"
        case 500...531:
            return "cloud.drizzle"
        case 600...622:
            return "cloud.rain"
        case 701...781:
            return "cloud.snow"
        case 800:
            return "cloud.fog"
        case 801...804:
            return "sun.max"
        default:
            return "cloud"
        }
    }
}
