//
//  ViewController.swift
//  sirishortapple
//
//  Created by John Bran on 2019-03-19.
//  Copyright © 2019 John Bran. All rights reserved.
//

import UIKit

class SandwichViewController: UIViewController {

    enum Item: Int {
        
        case tomato
        case bacon
        case lettuce
    }
    
    @IBOutlet weak var tomatoSwitch: UISwitch!
    @IBOutlet weak var baconSwitch: UISwitch!
    @IBOutlet weak var lettuceSwitch: UISwitch!
    
    var items: [Item]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func orderTapped(_ sender: Any) {
        
        var items: [Item] = []
        
        if tomatoSwitch.isOn {
            items.append(.tomato)
        }
        if baconSwitch.isOn {
            items.append(.bacon)
        }
        if lettuceSwitch.isOn {
            items.append(.lettuce)
        }
        
        if let vc = UIStoryboard(name: "Success", bundle: nil).instantiateInitialViewController() as? UIViewController { //replace UIViewController here
        //        vc.items = items
        //        vc.orderType = .sandwich
            
        navigationController?.pushViewController(vc, animated: true)
        }
    }
}

