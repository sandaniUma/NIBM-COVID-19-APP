//
//  ResultViewController.swift
//  
//
//  Created by Digital-09 on 9/17/20.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var resultImage: UIImageView!
    
    private var _selectUserResult: String!
    
    var selectUserResult: String{
        
        get{
            return _selectUserResult
        }
        set{
            _selectUserResult = newValue
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        resultLabel.text = _selectUserResult
        
        if _selectUserResult == "Your in Safe"
        {
            resultImage.image = UIImage(named: "status1")
        }
        else if _selectUserResult == "Your in Average"
        {
            resultImage.image = UIImage(named: "status2")
        }
        else if _selectUserResult == "Your in Risk"
        {
            resultImage.image = UIImage(named: "status3")
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
