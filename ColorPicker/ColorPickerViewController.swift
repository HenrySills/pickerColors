//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by Henry Sills on 7/5/19.
//  Copyright © 2019 Henry Sills. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {

    private let dataSource = ["Red","Orange","Yellow", "Green", "Blue" ,"Purple"]
    var color = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple]
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var PickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PickerView.dataSource = self
        PickerView.delegate = self
        self.view.backgroundColor = color[0]

        // Do any additional setup after loading the view.
    }
    
    
}

extension ColorPickerViewController : UIPickerViewDataSource, UIPickerViewDelegate{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = dataSource[row]
        self.view.backgroundColor = color[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }
    
    
}
