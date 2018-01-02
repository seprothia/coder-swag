//
//  DataService.swift
//  coder-swag
//
//  Created by Benjamin Wilson on 02/01/2018.
//  Copyright © 2018 Benjamin Wilson. All rights reserved.
//

import Foundation
class DataService{
    static let instance = DataService() // Made a singleton. Only one copy in memory.
    
    private let categories = [ // categories is an array of type Category
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() -> [Category] {
        return categories 
    }
}
