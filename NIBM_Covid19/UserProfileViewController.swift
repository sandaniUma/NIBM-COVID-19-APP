//
//  UserProfileViewController.swift
//  
//
//  Created by Digital-09 on 9/18/20.
//

import UIKit
import Firebase

class UserProfileViewController: UIViewController {

    
    @IBOutlet weak var fName: UILabel!
    
    @IBOutlet weak var lName: UILabel!
    
    @IBOutlet weak var userEmail: UILabel!
    
    @IBOutlet weak var userRole: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var ref: DatabaseReference!
        
        ref = Database.database().reference()
        
        let userID = Auth.auth().currentUser?.uid
        ref.child("users").child(userID!).observeSingleEvent(of: .value, with: { (snapshot) in

            
            if let user = snapshot.value as? [String : String]{
                
                print(user)
                self.fName.text = user["firstName"]!
                self.lName.text = user["lastName"]
                self.userEmail.text = user["emailUser"]
                self.userRole.text = user["userRoles"]
            }
        })
        {
            (error) in
            print(error.localizedDescription)
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
