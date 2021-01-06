//
//  CalculateButton.swift
//  tipCalculator
//
//  Created by Takayuki Yamaguchi on 2021-01-06.
//

import UIKit

class CalculateButton: UIButton {

    init(text : String = "") {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        self.setTitle     (text , for: .normal)
        self.setTitleColor(.systemBlue, for: .normal)
        self.setTitleColor(.systemTeal, for: .highlighted)
//        self.titleLabel?.font =  UIFont(name: "Inter-Regular", size: 16)
        self.titleLabel?.font = .systemFont(ofSize: 24)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
