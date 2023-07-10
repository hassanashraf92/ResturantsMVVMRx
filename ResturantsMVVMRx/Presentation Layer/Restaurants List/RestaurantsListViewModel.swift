//
//  RestaurantsListViewModel.swift
//  ResturantsMVVMRx
//
//  Created by Hassan Ashraf on 05/01/2022.
//

import Foundation
import RxSwift


protocol RestaurantsListViewModelProtocol {
    func updateViewWithRestaurants() -> Observable<[RestaurantViewModel]>
    func didSelectRestaurant(at index: Int)
}

final class RestaurantsListViewModel: RestaurantsListViewModelProtocol {

    let title = "Restaurants"
    
    var didSubmitAction: ((_ restaurant: Restaurant) -> Void?)?
    
    private let restaurantListUseCase: RestaurantsListUseCaseProtocol
    
    private var restaurants: [Restaurant] = []
    
    init(restaurantListUseCase: RestaurantsListUseCaseProtocol) {
        self.restaurantListUseCase  = restaurantListUseCase 
    }
    
    func updateViewWithRestaurants() -> Observable<[RestaurantViewModel]> {
        return restaurantListUseCase
            .fetch()
            .flatMap { [weak self] restaurants -> Observable<[RestaurantViewModel]> in
                guard let self = self else { return Observable.empty() }
                self.restaurants = restaurants
                let viewModels = restaurants.map { RestaurantViewModel(restaurant: $0) }
                return Observable.just(viewModels)
            }
    }
    
    func didSelectRestaurant(at index: Int) {
        guard index < restaurants.count else { return }
        let restaurant = restaurants[index]
        didSubmitAction?(restaurant)
    }
    
    
}
