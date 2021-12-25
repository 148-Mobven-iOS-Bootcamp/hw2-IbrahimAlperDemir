//
//  ViewController.swift
//  HW2
//
//  Created by Alper Demir on 25.12.2021.
//  Copyright © 2021 Alper Demir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sampleView: SampleView!
    @IBOutlet weak var Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerObserver()
        
        // Do any additional setup after loading the view.
    }

    func registerObserver() {
            NotificationCenter.default.addObserver(
                self,
                selector: #selector(textChanged(notification:)),
                name: .textValueChanged,
                object: nil
            )
        }
    
    @objc
        func textChanged(notification: Notification) {
            guard let text = notification.userInfo?["newValue"] as? String else { return }
            Label.text = text
        }
}

