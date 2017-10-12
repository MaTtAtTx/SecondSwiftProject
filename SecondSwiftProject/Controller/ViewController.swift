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
    }
    
    @IBAction func firstMethod(_ sender: UIButton)
    {
        if (specialBoolean == true)
        {
            view.backgroundColor = randomColor()
            firstButton.backgroundColor = randomColor()
            boringButton.backgroundColor = randomColor()
            boringButton2.backgroundColor = randomColor()
            boringButton3.backgroundColor = randomColor()
            boringButton4.backgroundColor = randomColor()
            firstButton.setTitleColor(randomColor(), for: .normal)
            boringButton.setTitleColor(randomColor(), for: .normal)
            boringButton2.setTitleColor(randomColor(), for: .normal)
            boringButton3.setTitleColor(randomColor(), for: .normal)
            boringButton4.setTitleColor(randomColor(), for: .normal)
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
    
    private func randomColor() -> UIColor
    {
        let newColor : UIColor
        let redAmount = CGFloat (drand48())
        let greenAmount = CGFloat (drand48())
        let blueAmount = CGFloat (drand48())
        newColor = UIColor(red: redAmount, green: greenAmount, blue: blueAmount, alpha: CGFloat(1.0))
        
        return newColor
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

