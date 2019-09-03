//
//  Cat.swift
//  Rectangles
//
//  Created by Admin on 14/07/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class Cat {
    func printDogStaticProperty() {
        print(Dog.staticProperty)
    }
    func printDogInstanceProperty() {
        let d = Dog()
        print(d.instanceProperty)
    }
}
