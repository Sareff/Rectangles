//
//  Dog.swift
//  Rectangles
//
//  Created by Admin on 14/07/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class Dog {
    static let staticProperty = "staticProperty"
    let instanceProperty = "instanceProperty"
    func printInstanceProperty() {
        print(self.instanceProperty)
    }
}
