//
//  ViewController.swift
//  FederalTax
//
//  Created by Fulcherberguer, Fernanda on 2019-10-31.
//  Copyright © 2019 Fulcherberguer, Fernanda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Mark: Properties
    
    
    @IBOutlet weak var nameEntered: UITextField!
    
    @IBOutlet weak var grossAnualIncome: UITextField!
    
    @IBOutlet weak var errorLabelname: UILabel!
    
    @IBOutlet weak var errorLabelIncome: UILabel!
    
    
    //Mark: Methods
    
    
    //Runs as soon as the view becomes visible to the user
     override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //  Get the amount of bill value from the text field
    @IBAction func calculateTax (sender:Any){
        
        //Check if user entered text in textfield
        guard let nameEntered  = nameEntered.text, nameEnteredString != ""  else  {
            errorLabelname.text = "Please enter a name"
        }
            
        }
    


}

