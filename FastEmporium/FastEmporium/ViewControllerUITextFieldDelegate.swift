//
//  ViewControllerUITextFieldDelegate.swift
//  FastEmporium
//
//  Created by Rafael Rios on 9/16/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == textFieldProduct {
            if let product = textFieldProduct.text, textFieldProduct.text != "" {
                enableDisableAllButtons()
                textFieldQuantity.becomeFirstResponder()
            }
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldDidEndEditing(textField)
        return true
    }
    
}

