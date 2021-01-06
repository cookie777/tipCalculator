//
//  TotalStackView.swift
//  tipCalculator
//
//  Created by Takayuki Yamaguchi on 2021-01-05.
//

import UIKit

class TotalAmountStackView: VerticalStackView {


    var title = RegularLabel(text: "Total Amount", alignment: .center)
    var amount = LargeLabel(text: "$ 00.00", alignment: .center)
    
    
    init() {
        super.init(arrangedSubviews: [title, amount], spacing: 24)
    }

    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
