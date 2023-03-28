//
//  DataService.swift
//  coder-swag
//
//  Created by Yashika Tonk on 03/03/23.
//

import Foundation

class DataService
{
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "DevSlopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "DevSLopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "DevSLopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "DevSlopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "DevSlopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "DevSlopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "DevSlopes Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "DevSlopes Hoodie Black", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "DevSlopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "DevSlopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "DevSllopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category]
    {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product]
    {
        switch title
        {
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
    
    func getHats() -> [Product]
    {
        return hats
    }
    func getHoodies() -> [Product]
    {
        return hoodies
    }
    func getShirts() -> [Product]
    {
        return shirts
    }
    func getDigitalGoods() -> [Product]
    {
        return digitalGoods
    }
}
