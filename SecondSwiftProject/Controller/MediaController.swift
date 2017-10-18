//
//  MediaController.swift
//  SecondSwiftProject
//
//  Created by Johnsen, Matthew on 10/18/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import AVFoundation

class MediaController: UIViewController
{
    private var soundPlayer : AVAudioPlayer?
    private var imageCounter : Int = 0
    private lazy var color : ColorTools = ColorTools()
    
    @IBOutlet weak var imageFrame: UIImageView!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var soundButton: UIButton!
    @IBOutlet weak var soundSlider: UISlider!

    @IBAction func changePicture() -> Void
    {
        switchImage()
    }
    
    private func switchImage() -> Void
    {
        if (imageCounter > 3)
        {
            imageCounter = 0
        }
        
        if (imageCounter == 0)
        {
            imageFrame.image = UIImage(named: "BabyPenguin")
        }
        else if (imageCounter == 1)
        {
            imageFrame.image = UIImage(named: "BabySeal")
        }
        else if (imageCounter == 2)
        {
            imageFrame.image = UIImage(named: "CuteDog")
        }
        else
        {
            imageFrame.image = UIImage(named: "CuteAnimals")
        }
        
        imageCounter += 1
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = color.randomColor()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
