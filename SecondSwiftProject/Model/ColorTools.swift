//
//  ColorTools.swift
//  SecondSwiftProject
//
//  Created by Johnsen, Matthew on 10/12/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class ColorTools
{
    public func randomColor() -> UIColor
    {
        let newColor : UIColor
        let redAmount = CGFloat (drand48())
        let greenAmount = CGFloat (drand48())
        let blueAmount = CGFloat (drand48())
        let alphaAmount = CGFloat (drand48())
        newColor = UIColor(red: redAmount, green: greenAmount, blue: blueAmount, alpha: alphaAmount)
        
        return newColor
    }
}
