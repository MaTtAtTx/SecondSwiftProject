//
//  SecondViewController.swift
//  SecondSwiftProject
//
//  Created by Johnsen, Matthew on 10/12/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class SecondViewController : UIViewController
{
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    lazy var colorTool : ColorTools = ColorTools()
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = colorTool.randomColor()
        homeButton.setTitleColor(colorTool.randomColor(), for: .normal)
        homeButton.backgroundColor = colorTool.randomColor()
        nextButton.setTitleColor(colorTool.randomColor(), for: .normal)
        nextButton.backgroundColor = colorTool.randomColor()
    }
}
