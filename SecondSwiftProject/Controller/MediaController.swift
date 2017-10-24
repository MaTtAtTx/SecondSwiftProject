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
    @IBOutlet weak var homeButton: UIButton!
    
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
        loadAudioFile()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func soundPlay()
    {
        playMusicFile()
    }
    
    private func playMusicFile() -> Void
    {
        if let isPlaying = soundPlayer?.isPlaying
        {
            if (isPlaying)
            {
                soundPlayer?.pause()
            }
            else
            {
                soundPlayer?.play()
            }
        }
    }
    
    private func loadAudioFile()
    {
        if let soundURL = NSDataAsset(name: "SwiftSound")
        {
            do
            {
                try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try! AVAudioSession.sharedInstance().setActive(true)
                
                try soundPlayer = AVAudioPlayer(data: soundURL.data, fileTypeHint: AVFileType.mp3.rawValue)
                soundSlider.maximumValue = Float ((soundPlayer?.duration)!)
                Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: (#selector(self.updateSlider)), userInfo: nil, repeats: true)
            }
            catch
            {
                print("Audio File Load Error")
            }
        }
    }
    
    @objc private func updateSlider() -> Void
    {
        soundSlider.value = Float ((soundPlayer?.currentTime)!)
    }
    
    @IBAction func slidingSound(_ sender: UISlider)
    {
        let seekTime = Double (soundSlider.value)
        soundPlayer?.currentTime = seekTime
    }
}
