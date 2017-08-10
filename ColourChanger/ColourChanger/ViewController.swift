//
//  ViewController.swift
//  ColourChanger
//
//  Created by Matt & Geoff on 3/08/17.
//  Copyright © 2017 Matt & Geoff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnSet: UIButton!
    @IBOutlet weak var btnReset: UIButton!
    @IBOutlet weak var viewColorBox: UIView!
    
    @IBOutlet weak var sldrRed: UISlider!
    @IBOutlet weak var sldrBlue: UISlider!
    @IBOutlet weak var sldrGreen: UISlider!
    
    @IBOutlet weak var lblRed: UILabel!
    @IBOutlet weak var lblGreen: UILabel!
    @IBOutlet weak var lblBlue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        btnSet.layer.masksToBounds = true
        btnSet.layer.cornerRadius = 5
        btnSet.layer.borderWidth = 1
        btnSet.layer.borderColor = UIColor.black.cgColor
        
        btnReset.layer.masksToBounds = true
        btnReset.layer.cornerRadius = 5
        btnReset.layer.borderWidth = 1
        btnReset.layer.borderColor = UIColor.black.cgColor
        
        viewColorBox.layer.masksToBounds = true
        viewColorBox.layer.cornerRadius = 5
        viewColorBox.layer.borderWidth = 1
        viewColorBox.layer.borderColor = viewColorBox.backgroundColor?.cgColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnReset(_ sender: Any) {
        viewColorBox.backgroundColor = UIColor.white
        viewColorBox.layer.borderColor = UIColor.black.cgColor
        sldrRed.value = 255
        sldrGreen.value = 255
        sldrBlue.value = 255
        lblRed.text = String(Int(sldrRed.value))
        lblGreen.text = String(Int(sldrGreen.value))
        lblBlue.text = String(Int(sldrBlue.value))
    }

    @IBAction func btnSetColour(_ sender: Any) {
        let redCol = CGFloat(round(sldrRed.value)/255)
        let greenCol = CGFloat(round(sldrGreen.value)/255)
        let blueCol = CGFloat(round(sldrBlue.value)/255)
        
        viewColorBox.backgroundColor = UIColor(red: redCol, green: greenCol, blue: blueCol, alpha: 1.0)
        viewColorBox.layer.borderColor = viewColorBox.backgroundColor?.cgColor
        
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

