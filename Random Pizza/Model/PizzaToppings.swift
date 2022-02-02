
import Foundation
import UIKit

struct PizzaToppings{
    let id : Int
    let toppings : String
    let image : UIImage
}

let pizza : [PizzaToppings] = [
    PizzaToppings(id: 0, toppings:"Sliced mushrooms, green pepper, red onion, tomato and pizza mozzarella", image:UIImage(named: "0")!),
    PizzaToppings(id: 1, toppings: "Tandoori paneer, green pepper, jalapeno and red onion", image: UIImage(named: "1")!),
    PizzaToppings(id: 2, toppings: "Green peppers, onion, tomatoes, mushrooms, and olives.", image: UIImage(named: "2")!),
    PizzaToppings(id: 3, toppings: "Alfredo sauce, baby spinach, onions, feta, Parmesan-Asiago, provolone and cheese", image: UIImage(named: "3")!),
    PizzaToppings(id: 4, toppings: "Red peppers, fresh baby spinach, onions, mushrooms, tomatoes, black olives", image: UIImage(named: "4")!),

// ---- Non-Veg (6-10)

    PizzaToppings(id: 5, toppings: "Steak, onions, green peppers and mushrooms", image:UIImage(named: "5")! ),
    PizzaToppings(id: 6, toppings: "Ranch Sauce base, Mozzarella/Cheddar Cheese blend, tomatoes, green peppers, chicken and bacon", image: UIImage(named: "6")!),
    PizzaToppings(id: 7, toppings: "Pepperoni, sausage, green peppers, mushrooms, onions and cheese", image: UIImage(named: "7")!),
    PizzaToppings(id: 8, toppings: "pineapple, ham topped with an extra cheese", image:UIImage(named: "8")!),
    PizzaToppings(id: 9, toppings: "Alfredo sauce, pizza mozzarella, cheddar, bacon, pineapple and chicken breast", image: UIImage(named: "9")!)

]
