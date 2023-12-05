//
//  ViewController.swift
//  StringInterpolation
//
//  Created by manjuprashanth s on 20/04/23.
//

import UIKit

class ViewController: UIViewController {

    private let userSensitiveIdentifier = 12345
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Log().log(message: " user identifier \(userSensitiveIdentifier, privacy: .private)", level: .warning)
    }
}

