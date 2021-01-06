//
//  MainScrollView.swift
//  tipCalculator
//
//  Created by Takayuki Yamaguchi on 2021-01-05.
//

import UIKit

class MainScrollView: UIScrollView {

    var totalAmountView = TotalAmountStackView()
    var billAmountView = UserInputStackView(titleText: "Your Bill Amount", unitText: "$")
    var tipPercentageView = UserInputStackView(titleText: "Tip Percentage", unitText: "%")
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
//        mainStackView.matchParent()
//        mainStackView.anchors(
//            topAnchor: self.contentLayoutGuide.topAnchor,
//            leadingAnchor: self.contentLayoutGuide.leadingAnchor,
//            trailingAnchor: self.contentLayoutGuide.trailingAnchor,
//            bottomAnchor: self.contentLayoutGuide.bottomAnchor
//        )
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
