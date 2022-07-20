//
//  ViewController.swift
//  Prework
//
//  Created by Reina Huang on 7/18/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userWords: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.userWords.delegate = self
        
    }

    let mytext: String = "Hello from Noty"
    
    @IBOutlet weak var TextLabel: UILabel!{
        didSet{
            TextLabel.text = mytext
        }
    }
        
    
    @IBAction func Click_text(_ sender: Any) {
        
        TextLabel.textColor = UIColor.orange
    }
    
    @IBAction func Click_bg(_ sender: Any) {
        
        view.backgroundColor = UIColor.systemGray
    }
    
    @IBAction func Click_text_change(_ sender: Any) {
       
        TextLabel.text = "Goodbye"
    }
    
    ///reset previous changes manually
    @IBAction func Reset(_ sender: UITapGestureRecognizer) {
        
        TextLabel.text = mytext
        TextLabel.textColor = UIColor(red: 45/255, green: 100/255, blue: 150/255, alpha: 1)
        view.backgroundColor = UIColor.systemGray2
    }
    
    @IBAction func Click_string_change(_ sender: Any) {
        view.endEditing(true)
        ///update label only when textfield is not empty
        if userWords.text != "" {
            TextLabel.text = "\(userWords.text!)"
        }
        
    }
}

extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
