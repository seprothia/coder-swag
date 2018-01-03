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
    
    private let hats = [
        Product(title: "Devslopes logo graphic beanie", price: "£18", imageName: "hat01.png"),
        Product(title: "Logo hat black", price: "£20", imageName: "hat02.png"),
        Product(title: "Another Devslopes hat", price: "£24", imageName: "hat03.png"),
        Product(title: "Devslopes logo snapback", price: "£30", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes logo hoodie grey", price: "£32", imageName: "hoodie01.png"),
        Product(title: "Devslopes logo hoodie red", price: "£32", imageName: "hoodie02.png"),
        Product(title: "Devslopes hoodie grey", price: "£32", imageName: "hoodie03.png"),
        Product(title: "Devslopes hoodie black", price: "£32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes logo shirt black", price: "£18", imageName: "shirt01.png"),
        Product(title: "Devslopes badge shirt", price: "£23", imageName: "shirt02.png"),
        Product(title: "Devslopes hustle delegate", price: "£45", imageName: "shirt03.png"),
        Product(title: "Devslopes logo shirt black", price: "£34", imageName: "shirt04.png"),
        Product(title: "Devslopes logo shirt black", price: "£34", imageName: "shirt05.png")
    ]
    
    private let digital = [Product]() // Collection view needs an array of some kind - if returns nil, app crashes
    
    func getCategories() -> [Category] {
        return categories 
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digital
    }
    
}






