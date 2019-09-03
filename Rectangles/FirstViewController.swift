//
//  FirstViewController.swift
//  Rectangles
//
//  Created by Admin on 14/07/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = nil

        let d = Dog()
        let c = Cat()
        print("Dog:")
        d.printInstanceProperty()
        print("\nCat:")
        c.printDogStaticProperty()
        c.printDogInstanceProperty()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
