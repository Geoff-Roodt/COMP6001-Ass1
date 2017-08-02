//
//  ViewController.swift
//  ColourChanger
//
//  Created by Matt & Geoff on 3/08/17.
//  Copyright © 2017 Matt & Geoff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textViewInfo: UITextView!
    @IBOutlet weak var btnReset: UIButton!
    @IBOutlet weak var btnInstructions: UIButton!
    @IBOutlet weak var textError: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textError.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnReset(_ sender: Any) {
        view.backgroundColor = UIColor.white
        textViewInfo.textColor = UIColor.black
        textError.text = ""
        
    }

    @IBAction func btnInstructions(_ sender: Any) {
        textViewInfo.isHidden = !textViewInfo.isHidden
    }

    @IBAction func btnSetColour(_ sender: Any) {
        
    }
}

