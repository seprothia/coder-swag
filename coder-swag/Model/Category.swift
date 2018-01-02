//
//  Category.swift
//  coder-swag
//
//  Created by Benjamin Wilson on 02/01/2018.
//  Copyright © 2018 Benjamin Wilson. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String // Private for setting, public for retrieving
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
