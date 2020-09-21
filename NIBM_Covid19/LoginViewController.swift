//
//  LoginViewController.swift
//  
//
//  Created by Digital-09 on 9/16/20.
//

import UIKit
import  Firebase

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var enailTextFeld: UITextField!
    
    @IBOutlet weak var passwordTextFeld: UITextField!
    
    @IBAction func logintoSystem(_ sender: UIButton) {
        if let email = enailTextFeld.text, let password = passwordTextFeld.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
             //   guard let strongSelf = self else { return }
            
            if let e = error{
                print(e)
                
                let alert = UIAlertController(title: "Login Failed", message: "Invalid Username or Password", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
            }
            else{
                self.performSegue(withIdentifier: "signSegway" , sender: self)
                
                let alert = UIAlertController(title: "Login Success", message: "Please answer this questions", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
            }
        }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
