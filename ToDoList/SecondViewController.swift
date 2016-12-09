//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Sa[m]eer on 12/6/16.
//  Copyright © 2016 Sameer Neema. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var textTask: UITextField!
    @IBOutlet var textDesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func btnAddTask_Click(sender: UIButton){
        taskMgr.addTask(name: textTask.text!, desc: (textDesc?.text)!)
        self.view.endEditing(true);
        textTask.text = ""
        textDesc.text = ""
        self.tabBarController?.selectedIndex = 0;
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true);
    }
    
    //UITextFieldDelegate
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        
        textField.resignFirstResponder();
        return true
    }
}

