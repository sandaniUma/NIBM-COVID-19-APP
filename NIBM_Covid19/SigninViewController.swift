//
//  SigninViewController.swift
//  
//
//  Created by Digital-09 on 9/16/20.
//

import UIKit
import Firebase

class SigninViewController: UIViewController {
    
    
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    
    @IBOutlet weak var emailUser: UITextField!
    
    
    @IBOutlet weak var userRole: UITextField!
    
    @IBOutlet weak var userPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func signUpbutten(_ sender: Any) {
        
        if let email = emailUser.text, let password = userPassword.text {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            
            if let e  = error{
                print(e)
            }
            else{
                self.performSegue(withIdentifier: "sgSegway" , sender: self)
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
}
