//
//  ViewController.swift
//  AlternateIconDemo
//
//  Created by Mayur G on 28/03/17.
//  Copyright © 2017 Mayur G. All rights reserved.
//

import UIKit

enum AppIconType: Int {
    case primary
    case green
    case blue
    
    init(rawString: String?) {
        if rawString == "AppIconGreen" {
            self.init(rawValue: 1)!
        } else if rawString == "AppIconBlue" {
            self.init(rawValue: 2)!
        } else {
            self.init(rawValue: 0)!
        }
    }
    
    var description: String? {
        switch self {
        case .primary:
            return nil
        case .green:
            return "AppIconGreen"
        case .blue:
            return "AppIconBlue"
        }
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let currentAppIconName = UIApplication.shared.alternateIconName
        let selectedIndex = AppIconType.init(rawString: currentAppIconName).rawValue
        self.segmentControl.selectedSegmentIndex = selectedIndex
    }

    @IBAction func valueChanged(_ sender: UISegmentedControl) {
        
        let appIconType = AppIconType.init(rawValue: sender.selectedSegmentIndex) ?? .primary
        
        UIApplication.shared.setAlternateIconName(appIconType.description) { (_ error: Error?) -> Void in
            print("error = \(String(describing: error?.localizedDescription))")
        }
        
    }

}

