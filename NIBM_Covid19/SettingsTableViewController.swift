//
//  SettingsTableViewController.swift
//  
//
//  Created by Digital-09 on 9/18/20.
//

import UIKit

class SettingsTableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath)
        
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath)
        
        
        if(indexPath.row%2 == 0) {
            return cell1
        } else {
            return cell2
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
