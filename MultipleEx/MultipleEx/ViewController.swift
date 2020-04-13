//
//  ViewController.swift
//  MultipleEx
//
//  Created by Roman on 4/12/20.
//  Copyright © 2020 Roman. All rights reserved.
//

import UIKit

class Global {
    var nameVar = String()
    var switchVar = String()
    var sliderVar:Int = 0
    var pickerVar = String()
}
let global = Global()


class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myName: UITextField!
    
    @IBAction func myButton(_ sender: Any) {
   let name = myName.text!
   myLabel.text = " \(name)"
           global.nameVar = myName.text!
   myName.resignFirstResponder()
            
    }
    
    @IBOutlet weak var mySwitch: UILabel!
    
    @IBOutlet weak var mySlider: UILabel!
    
    @IBOutlet weak var myPicker: UILabel!
    
    
    
    
    @IBOutlet weak var navView: UIView!
    
    @IBAction func clickMenu(_ sender: Any) {
    if(navView.isHidden) {
               navView.isHidden = false
           }
           else {
               navView.isHidden = true
           }
    }
    
 override func viewWillDisappear(_ animated: Bool) {
      navView.isHidden = true
  }
    
  
         
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
     // Had initial trouble transfering data. I thought viewWillAppear function went inside viewDidLoad function, but it has to be a seperate override fuction. 
       override func viewWillAppear(_ animated: Bool){
     mySwitch.text = "Switch \(global.switchVar)"
     mySlider.text = "Slider \(global.sliderVar)"
     myPicker.text = "Picker \(global.pickerVar)"
        }

}

