//
//  ViewController.swift
//  LoginApp
//
//  Created by Вячеслав Сорокин on 18.08.2022.
//

import UIKit

class AuthorizationViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    
    private let userName = "Eugeniya"
    private let password = "Password"
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if userNameTF.text !=  userName || passwordTF.text != password {
            showAlert(with: "Oops", and: "Wrong name or password")
            passwordTF.text = ""
        }
        
        guard let settingsVC = segue.destination as? WelcomeViewController else { return }
        settingsVC.userNameForMassage = userNameTF.text
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
        }
    @IBAction func remindUserNameAction() {
        showAlert(with: "Oops", and: "U'r name is \(userName)")
    }
    @IBAction func remindPasswordAction() {
        showAlert(with: "Oops", and: "U'r password is \(password)")
    }
    
    
    
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else if textField == passwordTF {
            performSegue(withIdentifier: "seague", sender: AnyObject.self)
        }
        
        return true
        }
    
    
    

}

