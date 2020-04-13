//
//  PickerViewController.swift
//  MultipleEx
//
//  Created by Roman on 4/12/20.
//  Copyright © 2020 Roman. All rights reserved.
//

import UIKit


class PickerViewController: UIViewController,  UIPickerViewDataSource, UIPickerViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var pickerVal: UILabel!
    
    
    let items = ["Green", "Orange", "Yellow", "Purple"]
    
    var selection:String!
    
    @IBOutlet weak var picker: UIPickerView!
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = items[row]
        pickerVal.text = "You selected: " + selection
        global.pickerVar = selection }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
