//
//  ResultViewController.swift
//  Gasoline or Ethanol
//
//  Created by Luiz Henrique Silva Sampaio on 29/07/23.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var ResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var fuelName = (fuelsPrice.ethanolPrice / fuelsPrice.gasolinePrice > 0.7) ? "gasoline" : "ethanol"
        
        navigationItem.hidesBackButton = true
        ResultLabel.text = "Your fuel choice should be \(fuelName)"
    }
}
