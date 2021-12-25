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
        
        sampleView.delegate = self
        
        // Do any additional setup after loading the view.
    }


}

extension ViewController: SampleViewDelegate {
    func textChanged(_ newValue: String) {
        
        Label.text = newValue
        
    }
    
    
}
