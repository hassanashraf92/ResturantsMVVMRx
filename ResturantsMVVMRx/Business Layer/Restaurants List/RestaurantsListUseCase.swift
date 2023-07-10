//
//  RestaurantsListUseCase.swift
//  ResturantsMVVMRx
//
//  Created by Hassan Ashraf on 05/01/2022.
//

import Foundation
import RxSwift

protocol RestaurantsListUseCaseProtocol {
    func fetch() -> Observable<[Restaurant]>
}

class RestaurantsListUseCase: RestaurantsListUseCaseProtocol {
    
    private let restaurantService: RestaurantServiceProtocol
    
    init(restaurantService: RestaurantServiceProtocol = RestaurantService()) {
        self.restaurantService = restaurantService
    }
    
    
    func fetch() -> Observable<[Restaurant]> {
        restaurantService.fetchRestaurants()
    }
}
