//
//  AppCoordinator.swift
//  ResturantsMVVMRx
//
//  Created by Hassan Ashraf on 05/01/2022.
//

import UIKit

class AppCoordinator: Coordinator {
    
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    
    private let window: UIWindow
    
    init(window: UIWindow, navigationController: UINavigationController) {
        self.window = window
        self.navigationController = navigationController
    }
    
    func start() {
        let restaurantCoordinator = RestaurantListCoordinator(navigationController: navigationController)
        restaurantCoordinator.start()
    }
}
