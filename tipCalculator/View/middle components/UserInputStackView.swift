//
//  BillAmountStackView.swift
//  tipCalculator
//
//  Created by Takayuki Yamaguchi on 2021-01-05.
//

import UIKit

class UserInputStackView: VerticalStackView {

    var titleLabel = RegularLabel(text: "", alignment: .center)
    
    var unitLabel = SubtleLabel(text: "")
    var textField = RegularTextFiled()
    lazy var unitTextFieldGroup = HorizontalStackView(arrangedSubviews: [unitLabel, textField], spacing: 8, alignment: .center)
    
    
    init(titleText: String, unitText: String) {
        super.init(arrangedSubviews: [], spacing: 16)
        titleLabel.text = titleText
        unitLabel.text = unitText
        unitLabel.constraintWidth(equalToConstant: 16)
        self.addArrangedSubview(titleLabel)
        self.addArrangedSubview(unitTextFieldGroup)
        
    }

    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
