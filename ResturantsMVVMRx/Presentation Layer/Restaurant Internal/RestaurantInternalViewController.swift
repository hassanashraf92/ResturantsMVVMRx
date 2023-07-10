//
//  RestaurantInternalViewController.swift
//  ResturantsMVVMRx
//
//  Created by Hassan Ashraf on 10/01/2022.
//

import UIKit
import RxSwift

class RestaurantInternalViewController: UIViewController {
    
    @IBOutlet weak var restaurantNameLabel: UILabel!
    @IBOutlet weak var CuisineLabel: UILabel!
    
    private var viewModel: RestaurantInternalViewModel!
    private lazy var disposeBag = DisposeBag()
    
    static func instantiate(viewModel: RestaurantInternalViewModel) -> RestaurantInternalViewController {
        let storyboard = UIStoryboard(name: "RestaurantInternal", bundle: .main)
        let viewController = storyboard.instantiateInitialViewController() as! RestaurantInternalViewController
        viewController.viewModel = viewModel
        return viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchRestaurantDetails().subscribe { restaurant in
            self.restaurantNameLabel.text = restaurant.displayText
            self.CuisineLabel.text = restaurant.cuisine
        }.disposed(by: disposeBag)
    }
    
    
}
