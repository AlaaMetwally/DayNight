//
//  ViewController.swift
//  DayNight
//
//  Created by Geek on 2/27/19.
//  Copyright © 2019 Geek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appPreference: UILabel!
    @IBOutlet weak var appSwitch: UISwitch!
    @IBOutlet weak var midNightTheme: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.bool(forKey: "midNightThemeOn"){
            switchToMidnight()
        }else{
            switchToDaytime()
        }
    }
    
    @IBAction func switchFlipped(sender: Any) {
        if appSwitch.isOn{
            switchToMidnight()
            UserDefaults.standard.set(true, forKey: "midNightThemeOn")
        }else{
            switchToDaytime()
            UserDefaults.standard.set(false, forKey: "midNightThemeOn")
        }
    }

    func switchToDaytime(){
        self.image.image = UIImage(named: "sun")
        appSwitch.isOn = false
    }
    func switchToMidnight(){
        self.image.image = UIImage(named: "moon")
        appSwitch.isOn = true
    }
}

