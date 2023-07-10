//
//  RestaurantInternalViewModel.swift
//  ResturantsMVVMRx
//
//  Created by Hassan Ashraf on 10/01/2022.
//

import Foundation
import RxSwift

protocol RestaurantInternalViewModelProtocol {
    func fetchRestaurantDetails() -> Observable<RestaurantDetailsViewModel>
}

class RestaurantInternalViewModel: RestaurantInternalViewModelProtocol {
    
    private let restaurant: Restaurant
    
    init(restaurant: Restaurant) {
        self.restaurant = restaurant
    }
    
    func fetchRestaurantDetails() -> Observable<RestaurantDetailsViewModel> {
        Observable.just(restaurant).map {
            RestaurantDetailsViewModel(restaurant: $0)
        }
    }

}
