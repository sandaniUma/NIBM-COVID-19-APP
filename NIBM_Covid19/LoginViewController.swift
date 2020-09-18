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
            }
            else{
                self.performSegue(withIdentifier: "signSegway" , sender: self)
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
