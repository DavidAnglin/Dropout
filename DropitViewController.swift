//
//  DropitViewController.swift
//  Dropit
//
//  Created by David Anglin on 2/9/16.
//  Copyright © 2016 David Anglin. All rights reserved.
//

import UIKit

class DropitViewController: UIViewController {

    @IBOutlet weak var gameView: UIView!
    
    var dropsPerRow = 10
    
    var dropSize: CGSize {
        let size = gameView.bounds.size.width / CGFloat(dropsPerRow)
        return CGSize(width: size, height: size)
    }

    @IBAction func drop(sender: UITapGestureRecognizer) {
        drop()
    }
    
    func drop() {
        var frame = CGRect(origin: CGPointZero, size: dropSize)
        frame.origin.x = CGFloat.random(dropsPerRow)
    }
}
    
    private extension CGFloat {
        static func random(max: Int) -> CGFloat {
            return CGFloat(arc4random() % UInt32(max))
    }
}
        
        private extension UIColor {
            class var random: UIColor {
                switch arc4random()%5 {
                    case 0: return UIColor.greenColor()
                    case 1: return UIColor.blueColor()
                    case 2: return UIColor.orangeColor()
                    case 3: return UIColor.redColor()
                    case 4: return UIColor.purpleColor()
                    default: return UIColor.blackColor()
                    
                }
            }
        }

