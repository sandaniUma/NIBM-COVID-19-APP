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
        ["que1" , "No"],
        ["que2" , "No"],
        ["que3" , "No"],
        ["que3" , "No"]
    ]
    var queNo = 0
    var total = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
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
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
