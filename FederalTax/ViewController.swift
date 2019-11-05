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
    
    
    // MARK: Properties
    // Variables that will be used
    // Define tax for first 47,630$ of income eg. (7,144.5 is 47,630 * 0.15)
    let federalTax1 = 7144.5
    // Define tax for the next 47,629$ of income
    let federalTax2 = 9763.945
    // Define tax for the next 52,408$ of income
    let federalTax3 = 13626.08
    // Define tax for the next 62,704$ of income
    let federalTax4 = 18184.16
    
    
    //Made outlets to connect on my main storyboard
    @IBOutlet weak var taxLabel: UILabel!
    
    @IBOutlet weak var nameEntered: UITextField!
    
    @IBOutlet weak var grossAnualIncome: UITextField!
    
    @IBOutlet weak var errorLabelname: UILabel!
    
    
    
    
    //Mark: Methods
    
    
    //Runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //  Get the amount of bill value from the textfield
    @IBAction func calculateTax (sender:Any){
        
        
        
        
        
        //Check if user entered name in textfield
        guard let nameEntered  = nameEntered.text, nameEntered != ""  else  {
            errorLabelname.text = "ERROR. Please enter a name!"
            return
            
        }
        
        // Get as a string
        guard let grossAnualIncome = grossAnualIncome.text, grossAnualIncome != "" else {
            errorLabelname.text = "ERROR. Please enter your Anual Income!"
            return
            
        }
        
        // Get as a decimal value (Double)
        guard let grossAnnualIncomeDouble = Double(grossAnualIncome) else {
            errorLabelname.text = "ERROR. Please enter your income as a number."
            return
        }
        
        // ensure that the user entered a value greater than zero
        if grossAnnualIncomeDouble > 0.0{
            
            
            
            // Calculate tax using switch statement
            switch grossAnnualIncomeDouble{
            case 0...47_630:
                // Multiply income by tax rate for this range
                let totalTax = grossAnnualIncomeDouble * 0.15
                // Round to two decimal places
                let totalTaxRounded = (round(100*totalTax)/100)
                // Find the tax rate by dividing total tax by income
                // After multiplying it by 100 because it is a percentage
                let taxRate = totalTax/grossAnnualIncomeDouble*100
                // Round tax rate to one decimal place
                let taxRateRounded = (round(10*taxRate)/10)
                // Display each text to the view in each label
                taxLabel.text = "\(grossAnualIncome) your federal tax owing is \(totalTaxRounded)$."
                errorLabelname.text = "Effective tax rate is: \(taxRateRounded)%."
                
            case 47630 ... 95259:
                let totalTax = federalTax1 + grossAnnualIncomeDouble
                // Round to two decimal places
                let totalTaxRounded = (round(100*totalTax)/100)
                // Find the tax rate by dividing total tax by income
                // After multiplying it by 100 because it is a percentage
                let taxRate = totalTax/grossAnnualIncomeDouble*100
                // Round tax rate to one decimal place
                let taxRateRounded = (round(10*taxRate)/10)
                // Display each text to the view in each label
                taxLabel.text = "\(grossAnualIncome) your federal tax owing is \(totalTaxRounded)$."
                errorLabelname.text = "Effective tax rate is: \(taxRateRounded)%."
                
                
            case 95260 ... 147667:
                let totalTax = federalTax1 + federalTax2 + grossAnnualIncomeDouble
                // Round to two decimal places
                let totalTaxRounded = (round(100*totalTax)/100)
                // Find the tax rate by dividing total tax by income
                // After multiplying it by 100 because it is a percentage
                let taxRate = totalTax/grossAnnualIncomeDouble*100
                // Round tax rate to one decimal place
                let taxRateRounded = (round(10*taxRate)/10)
                // Display each text to the view in each label
                taxLabel.text = "\(grossAnualIncome) your federal tax owing is \(totalTaxRounded)$."
                errorLabelname.text = "Effective tax rate is: \(taxRateRounded)%."
                
                
            case  147668 ... 210371:
                let totalTax = federalTax1 + federalTax2 + federalTax3 + grossAnnualIncomeDouble
                // Round to two decimal places
                let totalTaxRounded = (round(100*totalTax)/100)
                // Find the tax rate by dividing total tax by income
                // After multiplying it by 100 because it is a percentage
                let taxRate = totalTax/grossAnnualIncomeDouble*100
                // Round tax rate to one decimal place
                let taxRateRounded = (round(10*taxRate)/10)
                // Display each text to the view in each label
                taxLabel.text = "\(grossAnualIncome) your federal tax owing is \(totalTaxRounded)$."
                errorLabelname.text = "Effective tax rate is: \(taxRateRounded)%."
                
                
            default:
                let totalTax = federalTax1 + federalTax2 + federalTax3 + federalTax4 + grossAnnualIncomeDouble
                // Round to two decimal places
                let totalTaxRounded = (round(100*totalTax)/100)
                // Find the tax rate by dividing total tax by income
                // After multiplying it by 100 because it is a percentage
                let taxRate = totalTax/grossAnnualIncomeDouble*100
                // Round tax rate to one decimal place
                let taxRateRounded = (round(10*taxRate)/10)
                // Display each text to the view in each label
                taxLabel.text = "\(grossAnualIncome) your federal tax owing is \(totalTaxRounded)$."
                errorLabelname.text = "Effective tax rate is: \(taxRateRounded)%."
                
                
            }
            
            
            
        }
        
    }
    
    
    
}




