//
//  AddTaskViewController.swift
//  MAPD124-ToDo
//
//  Created by Andy on 2017-03-02.
//  Copyright © 2017 Reza. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var isImp: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    
    @IBAction func btnPressed(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Task(context: context)
        task.name = textField.text!
        task.isImportant = isImp.isOn
        
        //Save the data to coredata
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController!.popViewController(animated: true)
    }
    
}
