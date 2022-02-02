//
//  ViewController.swift
//  Random Pizza
//
//  Created by Admin on 2022-01-22.
//

import UIKit

class ViewController: UIViewController {
    
    var randomNumber : Int = 0

    @IBOutlet weak var container: UIView!
    
    @IBOutlet weak var toppings: UILabel!
    @IBOutlet weak var findPizza: UIButton!
    @IBOutlet weak var vegetarianButton : UIButton!
    @IBOutlet weak var meatButton : UIButton!
    @IBOutlet weak var anyButton : UIButton!
    
    @IBOutlet weak var pizzaTitle : UILabel!
    
    @IBOutlet weak var pizzaTopings : UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var baseTitle: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        image.image = UIImage(named: "App-icon")
        findPizza.tintColor = UIColor.systemOrange
        
        image.layer.borderWidth = 5
           image.layer.masksToBounds = false
           image.layer.borderColor = UIColor.white.cgColor
           image.layer.cornerRadius = image.frame.height/2
        container.layer.cornerRadius = container.frame.height/2
        container.layer.shadowColor = UIColor.black.cgColor
        container.layer.shadowRadius = 5
        container.layer.shadowOffset = CGSize(width: 0,height:6)
        container.layer.shadowOpacity = 0.9
        image.clipsToBounds = true
        
    }

    
    @IBAction func filterButtonChanged(_ sender: UIButton){
        meatButton.isSelected = false
        vegetarianButton.isSelected = false
        anyButton.isSelected = false
        sender.isSelected = true
        
        if vegetarianButton.isSelected == true {
            findPizza.tintColor = UIColor.systemGreen
            toppings.textColor = UIColor.systemGreen
            vegetarianButton.tintColor = UIColor.systemGreen
        }else {
            findPizza.tintColor = UIColor.systemOrange
            toppings.textColor = UIColor.systemOrange
            vegetarianButton.tintColor = UIColor.systemOrange

            
        }
    }
    
    @IBAction func findPizzaPressed (_ sender: UIButton){
        
    
        if meatButton.isSelected == true {
            randomNumber = Int.random(in: 5...9)
        }else if vegetarianButton.isSelected == true {
            randomNumber = Int.random(in: 0...4)
        }else {
            randomNumber = Int.random(in: 1...9)
        }
        print(randomNumber)
        DispatchQueue.main.async {
            self.pizzaTopings.text = pizza[self.randomNumber].toppings
            self.image.image = pizza[self.randomNumber].image
            
        }
        
    }
    


    
    
    
    
    
    
    
}

