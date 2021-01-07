//
//  MainScrollView.swift
//  tipCalculator
//
//  Created by Takayuki Yamaguchi on 2021-01-05.
//

import UIKit

class MainScrollView: UIScrollView {

    var totalAmountView = TotalAmountStackView()
    var billAmountView = UserInputStackView(titleText: "Your Bill Amount", unitText: "$", defaultValue: "0")
    var tipPercentageView = UserInputStackView(titleText: "Tip Percentage", unitText: "%", defaultValue: "0")
    var tipPercentageSlider = TipPercentageSlider()
    var calculateButton = CalculateButton(text: "Calculate Tip")

    lazy var mainStackView = VerticalStackView(
        arrangedSubviews: [
            totalAmountView,
            billAmountView,
            tipPercentageView,
            tipPercentageSlider,
            calculateButton
        ],
        spacing: 64)

    init() {
        super.init(frame: .zero)

        self.addSubview(mainStackView)
        mainStackView.matchSize(widthConstant: 64, heightConstant: 64)
  
        contentLayoutGuide.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1).isActive = true
        contentLayoutGuide.heightAnchor.constraint(equalTo: mainStackView.heightAnchor, multiplier: 1.2).isActive  = true
        
        mainStackView.centerXAnchor.constraint(equalTo: contentLayoutGuide.centerXAnchor).isActive = true
        mainStackView.topAnchor.constraint(equalTo:contentLayoutGuide.topAnchor, constant: 64).isActive = true
        
        

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
