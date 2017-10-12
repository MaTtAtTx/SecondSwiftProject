//
//  ViewController.swift
//  SecondSwiftProject
//
//  Created by Johnsen, Matthew on 10/10/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    lazy var colorTool : ColorTools = ColorTools()

    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var boringButton: UIButton!
    @IBOutlet weak var boringButton2: UIButton!
    @IBOutlet weak var boringButton3: UIButton!
    @IBOutlet weak var boringButton4: UIButton!
    @IBOutlet weak var funSwitch: UISwitch!
    var specialBoolean : Bool = false
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = colorTool.randomColor()
        firstButton.backgroundColor = colorTool.randomColor()
        boringButton.backgroundColor = colorTool.randomColor()
        boringButton2.backgroundColor = colorTool.randomColor()
        boringButton3.backgroundColor = colorTool.randomColor()
        boringButton4.backgroundColor = colorTool.randomColor()
    }
    
    @IBAction func firstMethod(_ sender: UIButton)
    {
        if (specialBoolean == true)
        {
            view.backgroundColor = colorTool.randomColor()
            firstButton.backgroundColor = colorTool.randomColor()
            boringButton.backgroundColor = colorTool.randomColor()
            boringButton2.backgroundColor = colorTool.randomColor()
            boringButton3.backgroundColor = colorTool.randomColor()
            boringButton4.backgroundColor = colorTool.randomColor()
            firstButton.setTitleColor(colorTool.randomColor(), for: .normal)
            boringButton.setTitleColor(colorTool.randomColor(), for: .normal)
            boringButton2.setTitleColor(colorTool.randomColor(), for: .normal)
            boringButton3.setTitleColor(colorTool.randomColor(), for: .normal)
            boringButton4.setTitleColor(colorTool.randomColor(), for: .normal)
        }
        else
        {
            view.backgroundColor = .white
            firstButton.backgroundColor = .white
            boringButton.backgroundColor = .white
            boringButton2.backgroundColor = .white
            boringButton3.backgroundColor = .white
            boringButton4.backgroundColor = .white
            firstButton.setTitleColor(.white, for: .normal)
            boringButton.setTitleColor(.white, for: .normal)
            boringButton2.setTitleColor(.white, for: .normal)
            boringButton3.setTitleColor(.white, for: .normal)
            boringButton4.setTitleColor(.white, for: .normal)
        }
    }
    
    @IBAction func funSwitch(_ sender: UISwitch)
    {
        if (sender.isOn == true)
        {
            specialBoolean = true
        }
        else
        {
            specialBoolean = false
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

