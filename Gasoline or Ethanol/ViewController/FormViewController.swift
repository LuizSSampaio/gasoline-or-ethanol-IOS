//
//  FormViewController.swift
//  Gasoline or Ethanol
//
//  Created by Luiz Henrique Silva Sampaio on 29/07/23.
//

import UIKit

class FormViewController: UIViewController {

    @IBOutlet var fuelsPriceField: [UITextField]!
    
    @IBAction func resultButtonPressed(_ sender: Any) {
        for fuelPriceField in fuelsPriceField {
            guard let fuelPriceText = fuelPriceField.text else {
                return
            }
            guard let fuelPrice = Double(fuelPriceText) else {
                return
            }
            
            if fuelPriceField.tag == 0 {
                fuelsPrice.gasolinePrice = fuelPrice
            } else {
                fuelsPrice.ethanolPrice = fuelPrice
            }
        }
        
        performSegue(withIdentifier: "goToResultScreen", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
}
