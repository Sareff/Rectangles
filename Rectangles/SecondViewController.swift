//
//  SecondViewController.swift
//  Rectangles
//
//  Created by Admin on 14/07/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    lazy var prog : UIProgressView = {
        let p = UIProgressView(progressViewStyle: .default)
        p.alpha = 0.7
        //p.trackTintColor = UIColor.clear
        p.progressTintColor = UIColor.black
        p.frame = CGRect(x: 10, y: 100, width: 200, height: 20)
        p.transform = CGAffineTransform(scaleX: 1, y: 10)
        p.progress = 0.5
        return p
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(prog)
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
