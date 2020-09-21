//
//  SigninViewController.swift
//  
//
//  Created by Digital-09 on 9/16/20.
//

import UIKit
import Firebase

class SigninViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    
    @IBOutlet weak var emailUser: UITextField!
    
    
    @IBOutlet weak var userRole: UITextField!
    
    @IBOutlet weak var userPassword: UITextField!
    
    
    var ref: DatabaseReference!
    
    @IBAction func signUpbutten(_ sender: Any) {
        
        if let email = emailUser.text, let password = userPassword.text {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            
            if let e  = error{
                print(e)
            }
            else{
//                self.performSegue(withIdentifier: "sgSegway" , sender: self)
                let userID = authResult?.user.uid
                let userFirstName = self.firstName.text
                let userLastName = self.lastName.text
                let userEmail = self.emailUser.text
                let userRoles = self.userRole.text
                
                self.ref = Database.database().reference()
                self.ref.child("users").child(userID ?? "").setValue(["firstName": userFirstName, "lastName": userLastName, "emailUser": userEmail, "userRoles": userRoles])
            
                self.performSegue(withIdentifier: "sgSegway", sender: self)
                print("Signed in!")
                
                //alert message setup
                let alert = UIAlertController(title: "Signup Success", message: "Please answer this questions", preferredStyle: UIAlertController.Style.alert)
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
