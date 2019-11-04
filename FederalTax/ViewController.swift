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
    
    //Button Pressed as a false boolean
    var buttonPressed: Bool = false
    
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
    
    //  Get the amount of bill value from the textfield
    @IBAction func calculateTax (sender:Any){
        
        
        

       
        //Check if user entered name in textfield
        if buttonPressed == false {
            guard let nameEntered  = nameEntered.text, nameEntered != ""  else  {
            errorLabelname.text = "Please enter a name!"
        return
            
            }
        
        //Check if user entered Anual Income in textfield
            if buttonPressed == false {
                guard let grossAnualIncome = grossAnualIncome.text, grossAnualIncome != "" else {
                    errorLabelname.text = "Please enter your Anual Income!"
                    return
                
            }
            
                
                // ensure that the user entered a value greater than zero
                if Double(grossAnualIncome)! > 0.0{
                   
                    
                    
                 switch (Double(grossAnualIncome)!){
                 case 0 ... 47629:
                    let tax = 1.15 * Double(grossAnualIncome)!
                 case 47630 ... 95259:
                    let tax = 1.205 * Double(grossAnualIncome)!
                 case 95260 ... 147667:
                    let tax = 1.206 * Double(grossAnualIncome)!
                 case  147668 ... 210371:
                    let tax = 1.209 * Double(grossAnualIncome)!
                
                 default:
                    let tax = 1.303 * Double(grossAnualIncome)!
                }
}
}
    
   
    
    }
    
     
}
}


