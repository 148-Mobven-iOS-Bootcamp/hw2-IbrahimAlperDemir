//
//  sampleviewdelegate.swift
//  HW2
//
//  Created by Alper Demir on 25.12.2021.
//  Copyright © 2021 Alper Demir. All rights reserved.
//

import Foundation

protocol SampleViewDelegate: AnyObject {
    func textChanged(_ newValue: String)
}
