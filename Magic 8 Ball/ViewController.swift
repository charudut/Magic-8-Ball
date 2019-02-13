//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Charudut Shetty on 2/12/19.
//  Copyright © 2019 Charudut Shetty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallImages()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImages()
    }
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomBallNumber: Int = 0
    
    func updateBallImages() {
        randomBallNumber = Int.random(in: 0...4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }

}

