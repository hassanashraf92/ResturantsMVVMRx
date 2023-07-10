//
//  RestaurantDetailsViewModel.swift
//  ResturantsMVVMRx
//
//  Created by Hassan Ashraf on 10/01/2022.
//

import Foundation

struct RestaurantDetailsViewModel {
    
    private let restaurant: Restaurant
    
    var displayText: String {
        return restaurant.name
    }
    
    var cuisine: String {
        return restaurant.cuisine.rawValue.capitalized
    }
    
    init(restaurant: Restaurant) {
        self.restaurant = restaurant
    }
    
}
