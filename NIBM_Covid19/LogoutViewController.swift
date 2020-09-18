//
//  LogoutViewController.swift
//  
//
//  Created by Digital-09 on 9/18/20.
//

import UIKit
import Firebase

class LogoutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signout(_ sender: UIButton) {
        
        let firebaseAuth = Auth.auth()
        
        do{
            try firebaseAuth.signOut()
            
            self.navigationController?.popViewController(animated: true)
            
            }catch let signoutErr as NSError {
            print("ERROR: %@", signoutErr)
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
