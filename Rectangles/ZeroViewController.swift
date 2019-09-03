//
//  ZeroViewController.swift
//  Rectangles
//
//  Created by Admin on 10/07/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class ZeroViewController: UIViewController {

    @IBOutlet weak var iv: UIImageView!
    @IBOutlet weak var iv2: UIImageView!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var button: UIButton!
    
    func whatToAnimate() {
        self.myButton.frame.origin.x += 200
        self.button.frame.origin.x += 55
        self.iv.frame.origin.x += 200
    }

    func whatToDoLater(finished: Bool) {
        print("finished: \(finished)")
    }
    
    func imageOfSize(_ size: CGSize, _ whatToDraw: () -> ()) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        whatToDraw()
        let result = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return result
    }
    
    func makeRoundedRectangleMaker(_ sz: CGSize) -> (CGFloat) -> UIImage {
        return { r in
            self.imageOfSize(CGSize(width: sz.width + 10, height: sz.height + 10)) {
                let p = UIBezierPath(
                    roundedRect: CGRect(origin: CGPoint(x: 5, y: 5), size: sz),
                    cornerRadius: r)
                p.stroke()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.iv.image = makeRoundedRectangleMaker(CGSize(width: 100, height: 75))(25)
        self.iv2.image = makeRoundedRectangleMaker(CGSize(width: 45, height: 20))(3)
    
        print(self.myButton.frame.origin.y)
        UIView.animate(withDuration: 0.5,
                       animations: whatToAnimate, completion: whatToDoLater)
        print(self.myButton.frame.origin.y)
        
        
        self.button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }

    @IBAction func doSomething(_ sender: Any) {
        self.iv2.image = makeRoundedRectangleMaker(CGSize(width: 45, height: 20))(8)
    }
    
    @objc func buttonPressed(_ sender: Any) {
        print("I've done something via Objective-C")
    }
    @IBAction func bttonPressed(_ sender: Any) {
        print("I've done something via Swift")
    }
}

