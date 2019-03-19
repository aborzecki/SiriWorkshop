//
//  ViewController.swift
//  sirishortapple
//
//  Created by John Bran on 2019-03-19.
//  Copyright © 2019 John Bran. All rights reserved.
//

import UIKit

class SandwichViewController: UIViewController {

    @IBOutlet weak var tomatoSwitch: UISwitch!
    @IBOutlet weak var baconSwitch: UISwitch!
    @IBOutlet weak var lettuceSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func orderTapped(_ sender: Any) {
        let sandwich = Sandwich(tomato: tomatoSwitch.isOn, bacon: baconSwitch.isOn, lettuce: lettuceSwitch.isOn)
        
        if let vc = UIStoryboard(name: "Success", bundle: nil).instantiateInitialViewController() as? SuccessViewController { //replace UIViewController here
            vc.sandwich = sandwich
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

struct Sandwich {
    let tomato: Bool
    let bacon: Bool
    let lettuce: Bool
}
