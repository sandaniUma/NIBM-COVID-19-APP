//
//  SurveyViewController.swift
//  
//
//  Created by Digital-09 on 9/16/20.
//

import UIKit

class SurveyViewController: UIViewController {

    
    @IBOutlet weak var imageServay: UIImageView!
    
    
    @IBOutlet weak var queLable: UILabel!
    
    
    @IBOutlet weak var AnswerQue1: UIButton!
    
    @IBOutlet weak var AnswerQue2: UIButton!
    
    let quAndAns = [
        ["Are you having cough, fever, sore throat, headache or shortness of breath?" , "No"],
        ["Have you been exposed with crowded places?" , "No"],
        ["Have you been interact with any sick person recently?" , "No"],
        ["Have you been travelled last 14 days?" , "No"]
    ]
    var queNo = 0
    var total = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showImage()
        // Do any additional setup after loading the view.
    }
    
    //Get a count of the survay result
    @IBAction func queButtenToQue(_ sender: UIButton) {
        
        let usrAnswer = sender.currentTitle
        let newAnswer = quAndAns[queNo][1]
        
        if newAnswer == usrAnswer{
            print("Write")
            total += 1
            print(total)
        }
        else{
            print("Wrong")
        }
        
        if queNo + 1 < quAndAns.count{
            queNo += 1
        }
        
        showImage()
    }
    
    func  showImage(){
      imageServay.image = UIImage(named: "icon\(queNo).png")
        queLable.text = quAndAns[queNo][0]
    }
    
    
    //set the result
    @IBAction func btnFinish(_ sender: Any) {
        
        var result = "Your in Safe"
        
        if total > 2 {
            result = "Your in Safe"
        }
        
        if total == 2 {
            result = "Your in Average"
        }
        
        if total < 2 {
            result = "Your in Risk"
        }
        
        self.performSegue(withIdentifier: "userResultSeg", sender: result)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let dest = segue.destination as? ResultViewController {
            
            if let resultSet = sender as? String{
                
                dest.selectUserResult = resultSet
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
