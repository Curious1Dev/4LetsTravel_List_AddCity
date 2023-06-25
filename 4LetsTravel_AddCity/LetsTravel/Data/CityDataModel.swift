//
//  CityDataModel.swift
//  LetsTravel
//
//  Created by Ani Adhikary on 04/06/23.
//

import Foundation

struct City: Hashable {
    let id = UUID()
    var cityName: String
    var country: String
    var description: String
}

class CityDataModel {
    static let data = [
        City(cityName: "Amsterdam", country: "Netherlands", description: ""),
        City(cityName: "Berlin", country: "Germany", description: ""),
        City(cityName: "Chicago", country: "USA", description: ""),
        City(cityName: "Dubai", country: "UAE", description: ""),
        City(cityName: "London", country: "UK", description: ""),
        City(cityName: "Mumbai", country: "India", description: ""),
        City(cityName: "New York City", country: "USA", description: ""),
        City(cityName: "New Delhi", country: "India", description: ""),
        City(cityName: "Paris", country: "France", description: ""),
        City(cityName: "Shanghai", country: "China", description: ""),
        City(cityName: "Toronto", country: "Canada", description: "")
    ]
}
