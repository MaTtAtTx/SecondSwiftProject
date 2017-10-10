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
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func firstMethod(_ sender: UIButton)
    {
        if (firstButton.backgroundColor == .blue)
        {
            firstButton.backgroundColor = .purple
        }
        else
        {
            firstButton.backgroundColor = .blue
        }
        view.backgroundColor = createRandomColor()
        boringButton.backgroundColor = createRandomColor()
        boringButton2.backgroundColor = createRandomColor()
        boringButton3.backgroundColor = createRandomColor()
        boringButton4.backgroundColor = createRandomColor()
        
    }
    
    private func createRandomColor() -> UIColor
    {
        let newColor : UIColor
        let redAmount = CGFloat (Double (arc4random_uniform(256))/255.00)
        let greenAmount = CGFloat (Double (arc4random_uniform(256))/255.00)
        let blueAmount = CGFloat (Double (arc4random_uniform(256))/255.00)
        newColor = UIColor(red: redAmount, green: greenAmount, blue: blueAmount, alpha: CGFloat(1.0))
        
        return newColor
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

