//
//  ViewController.swift
//  Clima
//
//  Created by Faiza Nawaz on 06/04/2023.
//

import UIKit

class WeatherViewController: UIViewController {

    @IBOutlet weak var lbCity: UILabel!
    @IBOutlet weak var lbTemprature: UILabel!
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var tfSearch: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tfSearch.delegate = self
    }

    //MARK: - Action methods
    
    @IBAction func searchPressed(_ sender: UIButton) {
        
        performSearch()
    }
    
    fileprivate func performSearch() {
        
        tfSearch.endEditing(true)
    }
}

extension WeatherViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        performSearch()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
       
        textField.text = ""
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        if (textField.text != "") {
            return true
        }
        
        textField.placeholder = "Type Something"
        return false
    }
}
