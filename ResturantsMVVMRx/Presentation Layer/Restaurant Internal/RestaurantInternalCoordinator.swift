//
//  RestaurantInternalCoordinator.swift
//  ResturantsMVVMRx
//
//  Created by Hassan Ashraf on 10/01/2022.
//

import UIKit

final class RestaurantInternalCoordinator: Coordinator {
    
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    
    private let restaurant: Restaurant

    init(navigationController: UINavigationController, restaurant: Restaurant) {
        self.navigationController = navigationController
        self.restaurant = restaurant
    }
    
    func start() {
        let viewModel = RestaurantInternalViewModel(restaurant: restaurant)
        let viewController = RestaurantInternalViewController.instantiate(viewModel: viewModel)
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    
}
