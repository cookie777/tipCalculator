//
//  RegularLabel.swift
//  tipCalculator
//
//  Created by Takayuki Yamaguchi on 2021-01-05.
//

import UIKit

class RegularLabel: UILabel {

    init(text: String = "" , alignment: NSTextAlignment ){
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        //        self.font = UIFont(name: , size: 18)
        self.font = .systemFont(ofSize: 18)
        self.textAlignment =  alignment
        self.numberOfLines = 0
        self.lineBreakMode = .byWordWrapping
        self.constraintHeight(equalToConstant: 18)
    }
    
    convenience init(text: String = "" ) {
        self.init(text: text,  alignment: .natural)
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
