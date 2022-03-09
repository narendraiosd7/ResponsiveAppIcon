//
//  ViewController.swift
//  ResponsiveAppIcon
//
//  Created by UW-IN-LPT0108 on 3/9/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func appIcon1Tapped(_ sender: UIButton) {
        changeIcon(to: "AppIconAlternate1")
    }

    @IBAction func appIcon2Tapped(_ sender: UIButton) {
        changeIcon(to: "AppIconAlternate2")
    }

    @IBAction func appIcon3Tapped(_ sender: UIButton) {
        changeIcon(to: "AppIconAlternate3")
    }

    @IBAction func resetAppIconTapped(_ sender: UIButton) {
        //Set the icon name to nil, the app will display its primary icon.
        changeIcon(to: nil)
    }

    func changeIcon(to name: String?) {
        //Check if the app supports alternating icons
        guard UIApplication.shared.supportsAlternateIcons else {
            return;
        }
        
        //Change the icon to a specific image with given name
        UIApplication.shared.setAlternateIconName(name) { (error) in
            //After app icon changed, print our error or success message
            if let error = error {
                print("App icon failed to due to \(error.localizedDescription)")
            } else {
                print("App icon changed successfully.")
            }
        }
    }
}

