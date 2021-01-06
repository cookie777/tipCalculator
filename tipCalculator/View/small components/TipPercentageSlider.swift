//
//  TipPercentageSlider.swift
//  tipCalculator
//
//  Created by Takayuki Yamaguchi on 2021-01-06.
//

import UIKit

class TipPercentageSlider: UISlider {

    init() {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
