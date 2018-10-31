//
//  ViewController.swift
//  POCEditingChange
//
//  Created by Victor Lee on 29/10/18.
//  Copyright © 2018 VictorLee. All rights reserved.
//

import UIKit

class CreditCardController: UIViewController, UITextFieldDelegate {

    
    let textField: UITextField = {
       let tf = UITextField()
        tf.textAlignment = .center
        tf.placeholder = "credit card number"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = .gray
        tf.borderStyle = .line
        tf.addTarget(self, action: #selector(textFieldChanged(textField:)), for: .editingChanged)
        return tf
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        textField.delegate = self

        view.addSubview(textField)
        
        setupTextField()
        
        
    }

    @objc private func textFieldChanged (textField: UITextField) {
        print("entering credit card number")
        guard let count = textField.text?.count else { return }
        if count == 4 || count == 9 || count == 14 {
            guard var text = textField.text else { return }
            text = text + " "
            textField.text = text
        }
        print(count)
    }
    
    private func setupTextField(){
        textField.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 10).isActive = true
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textField.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string == " " {
            return false
        }
        print("Changing characters")
        checkMaxLength(textField, maxLength: 19, string: string)
        return true
    }
    
    public func checkMaxLength(_ textField: UITextField, maxLength: Int, string: String) {
        guard let count = textField.text?.count else { return }
        
        if count >= maxLength || string.isBackspace {
            if let text = textField.text {
                let finalText = text.replacingOccurrences(of: " ", with: "")
                textField.text = finalText
            }
            textField.deleteBackward()
        }
    

    }

}

extension String {
    var isBackspace: Bool {
        let char = self.cString(using: String.Encoding.utf8)!
        return strcmp(char, "\\b") == -92
    }
}


