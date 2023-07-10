//
//  RestaurantViewModel.swift
//  ResturantsMVVMRx
//
//  Created by Hassan Ashraf on 05/01/2022.
//

import Foundation

struct RestaurantViewModel {
    
    private let restaurant: Restaurant
    var displayText: String {
        return restaurant.name + " - " + restaurant.cuisine.rawValue.uppercased()
    }
    
    init(restaurant: Restaurant) {
        self.restaurant = restaurant
    }
    
}
