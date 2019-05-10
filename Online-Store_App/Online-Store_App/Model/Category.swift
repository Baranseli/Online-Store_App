//
//  Category.swift
//  Online-Store_App
//
//  Created by Kafkas Baranseli on 10/05/2019.
//  Copyright © 2019 Baranseli. All rights reserved.
//

import Foundation

// 003 create struct for category and it should be private to setting public for retriving to controll the data
struct Category {
    private (set) public var title: String
    private (set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
