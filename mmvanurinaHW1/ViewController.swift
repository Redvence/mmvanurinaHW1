//
//  ViewController.swift
//  mmvanurinaHW1
//
//  Created by Maria Vanurina on 03.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonWasPressed(_ sender: Any) {
        
        var set = Set<UIColor>()
        
        self.button.isEnabled = false
        
        while set.count < 5 {
            set.insert(
                UIColor(
                    red: .random(in: 0...1),
                    green: .random(in: 0...1),
                    blue: .random(in: 0...1),
                    alpha: 1
                )
            )
        }

        UIView.animate(withDuration: 1.00, animations: {
            self.view1.backgroundColor = set.popFirst()
            self.view1.layer.cornerRadius = .random(in: 0...50)
            self.view2.backgroundColor = set.popFirst()
            self.view2.layer.cornerRadius = .random(in: 0...50)
            self.view3.backgroundColor = set.popFirst()
            self.view3.layer.cornerRadius = .random(in: 0...50)
            self.view4.backgroundColor = set.popFirst()
            self.view4.layer.cornerRadius = .random(in: 0...50)
            self.view5.backgroundColor = set.popFirst()
            self.view5.layer.cornerRadius = .random(in: 0...50)
        },
            completion: { [weak self] _ in
            self?.button.isEnabled = true
        })
//        view1.backgroundColor = set.popFirst()
//        view2.backgroundColor = set.popFirst()
//        view3.backgroundColor = set.popFirst()
//
//        view1.layer.cornerRadius = .random(in: 0...25)
//        view2.layer.cornerRadius = .random(in: 0...25)
//        view3.layer.cornerRadius = .random(in: 0...25)
            
//        func getUniqueColors() -> Array<UIColor> {
//            var colors = Array<UIColor>()
//            var set = Set<UIColor>()
//            while set.count < 3 {
//                set.insert(
//                    UIColor(
//                        red: .random(in: 0...1),
//                        green: .random(in: 0...1),
//                        blue: .random(in: 0...1),
//                        alpha: 1
//                        )
//                    )
//            }
//            while colors.count < set.count {
//                colors.append(set.popFirst() ?? default value)
//            }
//            return colors
//        }
//
//        var neededColors: Array = getUniqueColors()
//        view1.backgroundColor = neededColors[0]
//        view2.backgroundColor = neededColors[1]
//        view3.backgroundColor = neededColors[2]

    }

}
