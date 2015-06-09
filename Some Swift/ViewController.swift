//
//  ViewController.swift
//  Some Swift
//
//  Created by Mac Bellingrath on 6/9/15.
//  Copyright (c) 2015 com.mbellingrath. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var birdColor = UIColor ()
    
    let labelArray: [String]  = ["Awesome","Amazing","Slick","Sweet","Adorable","Oh My!"]

    @IBOutlet weak var swiftLabel: UILabel!

    @IBOutlet weak var swiftBirdImage: UIImageView!
    
    @IBAction func changeColorButtonPressed(sender: AnyObject) {
        
    var number = generateNumber()
    var convertedNumber  = Int(number)
    var image = UIImage(named: "\(convertedNumber).png")
    swiftLabel.text = labelArray[convertedNumber]
    swiftBirdImage.image = image
    println("\(number)")
        
        
       
        
    
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        var birdImage = UIImage(named: "6.png")
        
        swiftBirdImage.image = birdImage
       
        swiftLabel.text = "Swift is Cool!"
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateNumber() -> UInt32 {
        return arc4random_uniform(6)
    }


}

