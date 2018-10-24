//
//  ViewController.swift
//  AlgorithmV.swift
//
//  Created by Chambers, Eden on 10/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController
{
   
    @IBOutlet weak var algorithmText: UILabel!
    
    @IBOutlet weak var algorithmView: UIImageView!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        formatAlgorithm()
    }
   
   private func formatAlgorithm() -> Void
    {
        let title : String = "How to Make an App in XCode"
        
        let stepOne : String = "Open XCode, and select ‘Create New Xcode Project’. Hit next leaving the first page with the default settings. Name your Project with no spaces and ending with ‘.swift’, and select the previously made folder to create it in. "
        let stepTwo : String = "Right click your project folder in the Navigation pane, and make four groups nestled inside the Project’s main folder. (Controller, View, Model, and Resources)"
        let stepThree : String = "Put the Main.storyboard and the LaunchScreen.storyboard inside the View folder. The ViewController.swift should be put inside the Controller folder. The Assets.xcassets, AppDelegate.swift, and Info.plist segments should be put inside the Resources folder."
        let stepFour : String = "Click on your App’s name in the Navigation pane (Not the folder). In the identity section, click ‘Choose Info.plist File…’. Select your Info.plist file inside your resources folder in the popup screen. Click Main.storyboard in the Navigation pane, then click the project Name again. The identity section should not have the choice to choose an Info.plist file anymore."
        let stepFive : String = "Made a new .swift file in the Model folder and name it something relevant."
        
        let algorithm = [stepOne, stepTwo, stepThree, stepFour, stepFive]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString (string: title, attributes: attributesDictionary)
        
        /*
         v This sets up the bullet as the emoji and sets up the format of the words up ^
        */
        
        for step in algorithm
        {
            let bullet : String = "🎃"
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let outlineStyle = createOutlineStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        algorithmText.attributedText = fullAttributedString
        
    }
    
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }

    
    
}

