//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Logan Harrison on 9/21/17.
//  Copyright © 2017 Logan Harrison. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var activePlayer = 1 //Cross
    @IBOutlet weak var text: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    
    @IBAction func reset(_ sender: UIButton) {
        self.text.text = "X's Turn"
        activePlayer = 1
        button1.setImage(nil, for: UIControlState())
        button2.setImage(nil, for: UIControlState())
        button3.setImage(nil, for: UIControlState())
        button4.setImage(nil, for: UIControlState())
        button5.setImage(nil, for: UIControlState())
        button6.setImage(nil, for: UIControlState())
        button7.setImage(nil, for: UIControlState())
        button8.setImage(nil, for: UIControlState())
        button9.setImage(nil, for: UIControlState())
        
        button1.addTarget(self, action: #selector(ViewController.action(_:)), for: UIControlEvents.touchUpInside)
        button2.addTarget(self, action: #selector(ViewController.action(_:)), for: UIControlEvents.touchUpInside)
        button3.addTarget(self, action: #selector(ViewController.action(_:)), for: UIControlEvents.touchUpInside)
        button4.addTarget(self, action: #selector(ViewController.action(_:)), for: UIControlEvents.touchUpInside)
        button5.addTarget(self, action: #selector(ViewController.action(_:)), for: UIControlEvents.touchUpInside)
        button6.addTarget(self, action: #selector(ViewController.action(_:)), for: UIControlEvents.touchUpInside)
        button7.addTarget(self, action: #selector(ViewController.action(_:)), for: UIControlEvents.touchUpInside)
        button8.addTarget(self, action: #selector(ViewController.action(_:)), for: UIControlEvents.touchUpInside)
        button9.addTarget(self, action: #selector(ViewController.action(_:)), for: UIControlEvents.touchUpInside)
    }
    
    @IBAction func action(_ sender: AnyObject) {
        sender.removeTarget(nil, action: nil, for: .allEvents)
        if(activePlayer == 1){
            sender.setImage(UIImage(named: "Cross.png"), for: UIControlState())
            activePlayer = 2
            self.text.text = "O's Turn"
        }
        else {
            sender.setImage(UIImage(named: "Nought.png"), for: UIControlState())
            activePlayer = 1
            self.text.text = "X's Turn"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


