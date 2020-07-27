//
//  SettingsViewController.swift
//  ComprasUSA
//
//  Created by Clara Nascimento on 16/07/20.
//  Copyright © 2020 Clara Nascimento. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var tfIOF: UITextField!
    @IBOutlet weak var tfStateTaxes: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfDolar.text = tc.getFormattedValue(of: tc.dolar, withCurreny: "")
        tfIOF.text = tc.getFormattedValue(of: tc.iof, withCurreny: "")
        tfStateTaxes.text = tc.getFormattedValue(of: tc.stateTax, withCurreny: "")
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    func setValues() {
        tc.dolar = tc.convertToDouble(tfDolar.text!)
        tc.iof = tc.convertToDouble(tfIOF.text!)
        tc.stateTax = tc.convertToDouble(tfStateTaxes.text!)
    }
}

extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        setValues()
    }
}
