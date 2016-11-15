//
//  ChatVC.swift
//  IHC
//
//  Created by Rubens Gondek on 11/15/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import UIKit

class ChatVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textField: UITextField!
    
    var messages = [String]()
    var types = [Int]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK : - TableView
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let type = types[indexPath.row]
        
        if type == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "tCell", for: indexPath) as! TeacherCell
            
            cell.msgText.text = messages[indexPath.row]
            cell.msgText.sizeToFit()
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "sCell", for: indexPath) as! StudentCell
            
            cell.msgText.text = messages[indexPath.row]
            cell.msgText.sizeToFit()
            
            return cell
        }
    }

    
    @IBAction func sendBtn(_ sender: UIButton) {
        if textField.text == "" {
            return
        }
        
        messages.append(textField.text!)
        types.append(1)
        
        textField.text = ""
        
        tableView.reloadData()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
