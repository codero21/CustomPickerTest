//
//  ViewController.swift
//  CustomPickerTest
//
//  Created by Rollin Francois on 6/6/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var resultLabel: UILabel!
    
    let dataComponent1: [String] = ["Apple", "Banana", "Lemon", "Orange", "Peach", "Pear", "Pineapple"]
    let dataComponent2: [String] = ["Banana", "Orange", "Pear", "Apple", "Pineapple", "Lemon", "Peach"]
    let dataComponent3: [String] = ["Pear", "Peach", "Lemon", "Pineapple", "Apple", "Banana", "Orange"]
    
    let nameToImageMapping: [String:String] = ["Apple": "appleImages",
                                               "Banana": "bananaImages",
                                               "Lemon": "lemonImages",
                                               "Orange": "orangeImages",
                                               "Peach": "peachImages",
                                               "Pear": "pearImages",
                                               "Pineapple": "pineappleImages"]
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

