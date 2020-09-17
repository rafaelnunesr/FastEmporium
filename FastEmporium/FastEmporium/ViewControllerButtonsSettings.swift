//
//  ViewControllerButtonsSettings.swift
//  FastEmporium
//
//  Created by Rafael Rios on 9/16/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    
    func hiddeButtonDelete() {
        buttonDelete.isHidden = true
    }
    
    func unhiddeButtonDelete() {
        buttonDelete.isHidden = true
    }
    
    func enableDisableAllButtons() {
        
        let ifButtonsAreEnable = buttonSave.isEnabled
        
        buttonSave.isEnabled = !buttonSave.isEnabled
        buttonClear.isEnabled = !buttonClear.isEnabled
        buttonDelete.isEnabled = !buttonDelete.isEnabled
        
        if ifButtonsAreEnable {
            downButtonOpacity()
        }else {
            upButtonOpacity()
        }
    }
    
    func downButtonOpacity() {
        buttonSave.alpha = 0.2
        buttonClear.alpha = 0.2
        buttonDelete.alpha = 0.2
    }
    
    func upButtonOpacity() {
        buttonSave.alpha = 1.0
        buttonClear.alpha = 1.0
        buttonDelete.alpha = 1.0
    }
    
}
