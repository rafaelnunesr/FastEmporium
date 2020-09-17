//
//  ViewController.swift
//  FastEmporium
//
//  Created by Rafael Rios on 9/16/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    // MARK: TEXTFIELDS
    @IBOutlet weak var textFieldProduct: UITextField!
    @IBOutlet weak var textFieldQuantity: UITextField!
    
    // MARK: BUTTONS OULETS
    @IBOutlet weak var buttonSave: UIButton!
    @IBOutlet weak var buttonClear: UIButton!
    @IBOutlet weak var buttonDelete: UIButton!
    
    var products = Products()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enableDisableAllButtons()
        
        textFieldProduct.delegate = self
        textFieldQuantity.delegate = self
    }
    
    
    @IBAction func buttonSave(_ sender: Any) {
        
        if ifTextFieldProductHasData() {
            let productName = getTextFieldData()
            
            if products.ifProductExists(productName: productName) {
                if ifTextFieldQuantityHasData() {
                    let productQuantity = getTextFieldQuantity()
                    
                    products.updateProductQuantity(productName: productName, newQuantity: Int(productQuantity)!)
                }
            }else {
                if ifTextFieldQuantityHasData() {
                    let productQuantity = getTextFieldQuantity()
                    
                    products.addNewProduct(productName: productName, quantity: Int(productQuantity)!)
                }
            }
            
        }
        
        clearFields()
    }
    
    @IBAction func buttonClear(_ sender: Any) {
        clearFields()
    }
    
    @IBAction func buttonDelete(_ sender: Any) {
    }
    
    func setTextFieldQuantity(quantity: String) {
        textFieldQuantity.text = quantity
    }
    
    private func clearFields() {
        textFieldProduct.text = ""
        textFieldQuantity.text = ""
    }
    
}
