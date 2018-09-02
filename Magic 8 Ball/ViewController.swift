//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by charliezhang on 2018-09-01.
//  Copyright © 2018 Chenyu Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // link to all modules
    @IBOutlet weak var imageView: UIImageView!

    // variables to hold random number
    var randomNum : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        changeAnswer()
    }
    
    func changeAnswer(){
        // generate the random number and change the image
        randomNum = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: "ball\(randomNum + 1)")
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        // change the answer as well when the user stop shaking the app
        changeAnswer()
    }
    
}

