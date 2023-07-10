//
//  Coordinator.swift
//  ResturantsMVVMRx
//
//  Created by Hassan Ashraf on 05/01/2022.
//

import UIKit

protocol Coordinator: AnyObject {
    var children: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}
