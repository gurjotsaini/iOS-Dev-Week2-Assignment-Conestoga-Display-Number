//
//  ViewController.swift
//  ConestogaDisplayNumber
//
//  Created by Gurjot Saini on 21/01/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var incrementBtn: UIButton!
    @IBOutlet weak var decrementButton: UIButton!
    
    @IBOutlet weak var resetBtn: UIButton!
    @IBOutlet weak var stepTwoBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setting current value
        outputLabel.text = String(DataHandelModel.getCurrentValue());
    }

    // Increment current value (default by 1)
    @IBAction func incrementBtnAction(_ sender: Any) {
        DataHandelModel.setCurrentValue(value: DataHandelModel.getCurrentValue() + DataHandelModel.getCalculationValue())
        outputLabel.text = String(DataHandelModel.getCurrentValue())
    }
    
    // Decrement current value (default by 1)
    @IBAction func decrementBtnAction(_ sender: Any) {
        if (DataHandelModel.getCurrentValue() < 0) {
            DataHandelModel.setCurrentValue(value: 0)
            outputLabel.text = String(DataHandelModel.getCurrentValue())
        }
        
        DataHandelModel.setCurrentValue(value: DataHandelModel.getCurrentValue() - DataHandelModel.getCalculationValue())
        outputLabel.text = String(DataHandelModel.getCurrentValue())
    }
    
    // Set increment/decrement value to 2
    @IBAction func stepTwoBtnAction(_ sender: Any) {
        DataHandelModel.setCalculationValue(value: 2)
    }
    
    // Set current value and calculation value to default
    @IBAction func resetBtnAction(_ sender: Any) {
        // Set current value and calculation value to initial values
        DataHandelModel.setCurrentValue(value: DataHandelModel.getInitialValue())
        DataHandelModel.setCalculationValue(value: 1)
        
        // Displaying initial value to outputLabel
        outputLabel.text = String(DataHandelModel.getInitialValue())
    }
}

