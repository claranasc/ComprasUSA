//
//  ViewController.swift
//  ComprasUSA
//  
//  Created by Clara Nascimento on 15/07/20.
//  Copyright © 2020 Clara Nascimento. All rights reserved.
//

import UIKit

class ShoppingViewController: UIViewController {

    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var lbRealDescription: UILabel!
    @IBOutlet weak var lbReal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setAmmount()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tfDolar.resignFirstResponder()
        setAmmount()
    }
    
    func setAmmount() {
        tc.shoppingValue = tc.convertToDouble(tfDolar.text!)
        lbReal.text = tc.getFormattedValue(of: tc.shoppingValue * tc.dolar, withCurreny: "")
        let dolar = tc.getFormattedValue(of: tc.dolar, withCurreny: "R$ ")
        lbRealDescription.text = "Valor sem impostos (dólar \(dolar))"
    }
    
}
