//
//  DataService.swift
//  Online-Store_App
//
//  Created by Kafkas Baranseli on 10/05/2019.
//  Copyright © 2019 Baranseli. All rights reserved.
//

import Foundation

// 004 create a cless for Services to not repeat the struct.
class DataService {
    static let instance = DataService()    // static means one tin data for memory saving
    
    
    private let categories = [Category(title: "SHIRTS", imageName: "shirts.png"),
                              Category(title: "HOODIES", imageName: "hoodies.png"),
                              Category(title: "HATS", imageName: "hats.png"),
                              Category(title: "DIGITAL", imageName: "digital.png")]
    
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie001.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie002.png"),
        Product(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie003.png"),
        Product(title: "Devslopes Hoodie Black", price: "$32", imageName: "hoodie004.png")
    ]
    
    private let shirts = [
    Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt001.png"),
    Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt002.png"),
    Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt003.png"),
    Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt004.png"),
    Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt005.png")
    ]
    
    private let digitalGoods = [Product]()
    
    
    
    // 005 to call the func below
    func getCategories() -> [Category]{
        return categories
    }
    
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
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
        return digitalGoods
    }
}
