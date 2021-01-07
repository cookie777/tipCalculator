//
//  ViewController.swift
//  tipCalculator
//
//  Created by Takayuki Yamaguchi on 2021-01-05.
//

import UIKit

class ViewController: UIViewController {
    
    var scrollView = MainScrollView()
    var totalAmount: Double = 0
    var tipPercentage: String = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        registerKeyboardNotification()

        view.addSubview(scrollView)
        scrollView.matchParent()
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard(_:)))
        view.addGestureRecognizer(gestureRecognizer)
        
        scrollView.calculateButton.addTarget(self, action: #selector(calculateBottonPressed), for: .touchUpInside)
        
        scrollView.tipPercentageSlider.addTarget(self, action: #selector(sliderMoved), for: .valueChanged)
        
    }
    
    
    func registerKeyboardNotification() {
      NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShow(_:)), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    func updateTotalAmount(){
        scrollView.totalAmountView.amount.text = String(format: "$ %.2f", totalAmount)
    }
    func updateTipPercentage(){
        scrollView.tipPercentageView.textField.text = tipPercentage
    }
    func calculateResult(){
        guard let billAmountText = scrollView.billAmountView.textField.text,
              let billAmount = Double(billAmountText) else {return}
        
        guard let tipPercentageText = scrollView.tipPercentageView.textField.text,
              let tipPercentage = Double(tipPercentageText) else {return}
        
        totalAmount = (tipPercentage/100+1)*billAmount
    }

    @objc func keyboardDidShow(_ notification: NSNotification){
        guard let info = notification.userInfo, let keyboardFrameValue = info[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue else { return }
        
        let keyboardFrame = keyboardFrameValue.cgRectValue
        let keyboardHeight = keyboardFrame.size.height
        
        let insets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardHeight, right: 0)
        scrollView.contentInset = insets
        scrollView.scrollIndicatorInsets = insets
    }
    
    @objc func keyboardWillHide(_ notification: NSNotification){
        let insets = UIEdgeInsets.zero
        scrollView.contentInset = insets
        scrollView.scrollIndicatorInsets = insets
    }
    
    @objc func dismissKeyboard(_ sender: UITapGestureRecognizer) {
      view.endEditing(true)
    }
    
    
    @objc func calculateBottonPressed(){
        calculateResult()
        updateTotalAmount()
    }
    
    @objc func sliderMoved(_ sender: UISlider){
        
        let percentage =  sender.value*100
        tipPercentage = String(format: "%.0f", percentage)
        
        updateTipPercentage()
        calculateResult()
        updateTotalAmount()
    }
}

// get slider value
// get total amount value



