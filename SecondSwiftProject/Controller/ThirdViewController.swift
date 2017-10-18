//
//  ThirdViewController.swift
//  SecondSwiftProject
//
//  Created by Johnsen, Matthew on 10/16/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController
{
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    lazy var colorTool: ColorTools = ColorTools()
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = colorTool.randomColor()
        homeButton.setTitleColor(colorTool.randomColor(), for: .normal)
        homeButton.backgroundColor = colorTool.randomColor()
        backButton.setTitleColor(colorTool.randomColor(), for: .normal)
        backButton.backgroundColor = colorTool.randomColor()
        nextButton.setTitleColor(colorTool.randomColor(), for: .normal)
        nextButton.backgroundColor = colorTool.randomColor()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
