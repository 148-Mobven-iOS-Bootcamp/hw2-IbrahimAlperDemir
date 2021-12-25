//
//  SampleView.swift
//  HW2
//
//  Created by Alper Demir on 25.12.2021.
//  Copyright © 2021 Alper Demir. All rights reserved.
//

import UIKit

final class SampleView: UIView {

    @IBOutlet private var contentView: UIView!
    @IBOutlet private weak var textField: UITextField!

     weak var delegate: SampleViewDelegate?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialize()
    }

    private func initialize() {
        Bundle.main.loadNibNamed("SampleView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }

    @IBAction func onSubmitButtonTapped(_ sender: UIButton) {
        let text = textField.text ?? ""
        delegate?.textChanged(text)
    }

}
