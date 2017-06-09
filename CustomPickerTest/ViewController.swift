//
//  ViewController.swift
//  CustomPickerTest
//
//  Created by Rollin Francois on 6/6/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
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
        
        resultLabel.text = "Match the fruits in each row!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return dataComponent1.count
        } else if component == 1{
            return dataComponent2.count
        } else {
            return dataComponent3.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 50
    }
    

    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        // Get the fruit name
        var keyString: String? = nil
        if component == 0 {
            keyString = dataComponent1[row]
        } else if component == 1 {
            keyString = dataComponent2[row]
        } else if component == 2 {
            keyString = dataComponent3[row]
        }
        
        var imageFileName: String? = nameToImageMapping[keyString!]
        
//        if view == nil {
//            return UIImageView(image: UIImage(named: imageFileName!))
//        }
        if view == nil {
            return UIImageView(image: UIImage(named: imageFileName!))
        }
    
        var imageView: UIImageView = view as! UIImageView
        
        imageView.image = UIImage(named: imageFileName!)
        
        return view!
    
    }
    
    

}

