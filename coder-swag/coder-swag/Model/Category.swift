//
//  Category.swift
//  coder-swag
//
//  Created by Yashika Tonk on 03/03/23.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
