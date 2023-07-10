//
//  Restuarant.swift
//  ResturantsMVVMRx
//
//  Created by Hassan Ashraf on 05/01/2022.
//

import Foundation

struct Restaurant: Decodable {
    let name: String
    let cuisine: Cuisine
}


enum Cuisine: String, Decodable {
    case europian
    case indian
    case mexican
    case english
    case arabian
    case fastFood
    case italian
    
}
