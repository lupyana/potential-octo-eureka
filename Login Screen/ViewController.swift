//
//  ViewController.swift
//  Login Screen
//
//  Created by Lupyana Mbembati on 23/12/2019.
//  Copyright © 2019 Lupyana Mbembati. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonCicked(_ sender: Any) {
        validateFields()
    }
    
    func validateFields(){
        if textFieldEmail.text == "" {
            makeAlert(alertTitle: "Error!", alertMessage: "Email not entered")
        } else if textFieldPassword.text == "" {
           makeAlert(alertTitle: "Error!", alertMessage: "Password not entered")
        }
        //validation has passed
        else {
            performSegue(withIdentifier: "toSecondViewController", sender: nil)
        }
    }
    
    func makeAlert(alertTitle: String, alertMessage: String) {
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: UIAlertController.Style.alert)
        let okButton  = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
            //
            print("Button clicked")
            
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}

