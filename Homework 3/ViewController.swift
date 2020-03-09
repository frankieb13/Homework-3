//
//  ViewController.swift
//  Homework 3
//
//  Created by Frank Bonura on 2/20/20.
//  Copyright © 2020 Frank Bonura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bunny: UIImageView!
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func button(_ sender: Any) {
        
        if (bunny.isAnimating)
        {
           bunny.stopAnimating()
        }else
        {
    bunny.startAnimating()
   }
}
    @IBAction func setspeed(_ sender: Any) {
        
        
        bunny.animationDuration=TimeInterval(3.0-slider.value)
        bunny.startAnimating()
    }
    
    @IBAction func hidebutton(_ sender: Any) {
        if background.isHidden{
            background.isHidden=false
        } else{
            background.isHidden=true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hopAnimation: [UIImage] = [
            UIImage(named: "frame-1")!,
            UIImage(named: "frame-2")!,
            UIImage(named: "frame-3")!,
            UIImage(named: "frame-4")!,
            UIImage(named: "frame-5")!,
            UIImage(named: "frame-6")!,
            UIImage(named: "frame-7")!,
            UIImage(named: "frame-8")!,
            UIImage(named: "frame-9")!,
            UIImage(named: "frame-10")!,
    ]
        
        bunny.animationImages=hopAnimation
        bunny.animationDuration=1.0
        // Do any additional setup after loading the view.
    }


}

