//
//  RegularTextFiled.swift
//  tipCalculator
//
//  Created by Takayuki Yamaguchi on 2021-01-05.
//

import UIKit

class RegularTextFiled: UITextField {

    init() {
        super.init(frame: .init(x: 0, y: 0, width: 200, height: 24))
        translatesAutoresizingMaskIntoConstraints = false
        self.constraintHeight(equalToConstant: 24)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
