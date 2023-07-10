//
//  RestaurantListCoordinator.swift
//  ResturantsMVVMRx
//
//  Created by Hassan Ashraf on 10/01/2022.
//

import UIKit

class RestaurantListCoordinator: Coordinator {
    
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let useCase = RestaurantsListUseCase()
        let viewModel = RestaurantsListViewModel(restaurantListUseCase: useCase)
        
        viewModel.didSubmitAction = { restaurant in
            self.navigateToInternalViewController(with: restaurant)
        }
        
        let viewController = RestaurantListViewController.instantiate(viewModel: viewModel)
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func navigateToInternalViewController(with restaurant: Restaurant) {
        let restaurantInternalCoordinator = RestaurantInternalCoordinator(navigationController: navigationController, restaurant: restaurant)
        restaurantInternalCoordinator.start()
    }
}
