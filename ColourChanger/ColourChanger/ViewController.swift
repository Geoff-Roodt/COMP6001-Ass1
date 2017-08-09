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
    
    @IBOutlet weak var sldrRed: UISlider!
    @IBOutlet weak var sldrBlue: UISlider!
    @IBOutlet weak var sldrGreen: UISlider!
    
    @IBOutlet weak var lblRed: UILabel!
    @IBOutlet weak var lblGreen: UILabel!
    @IBOutlet weak var lblBlue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textError.text = ""
        textViewInfo.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnReset(_ sender: Any) {
        view.backgroundColor = UIColor.white
        textViewInfo.textColor = UIColor.black
        textError.text = ""
        sldrRed.value = 0
        sldrGreen.value = 0
        sldrBlue.value = 0
        textViewInfo.isHidden = true
        lblRed.text = "0"
        lblGreen.text = "0"
        lblBlue.text = "0"
    }

    @IBAction func btnInstructions(_ sender: Any) {
        textViewInfo.isHidden = !textViewInfo.isHidden
    }

    @IBAction func btnSetColour(_ sender: Any) {
        let redCol = CGFloat(round(sldrRed.value)/255)
        let greenCol = CGFloat(round(sldrGreen.value)/255)
        let blueCol = CGFloat(round(sldrBlue.value)/255)
        
        view.backgroundColor = UIColor(red: redCol, green: greenCol, blue: blueCol, alpha: 1.0)
        
    }
    @IBAction func slrdRedChanged(_ sender: UISlider) {
        lblRed.text = String(Int(round(sldrRed.value)))
    }
    @IBAction func sldrGreenChanged(_ sender: UISlider) {
        lblGreen.text = String(Int(round(sldrGreen.value)))
    }
    @IBAction func sldrBlueChanged(_ sender: UISlider) {
        lblBlue.text = String(Int(round(sldrBlue.value)))
    }
}

