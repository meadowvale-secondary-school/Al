//
//  ViewController.swift
//  Two Buttons
//
//  Created by Al-Ansar on 2019-04-09.
//  Copyright © 2019 Al-Ansar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func setTextButtonTapped(_ sender: UIButton) {
        textLabel.text = textField.text
    }
    @IBAction func clearTextButtonTapped(_ sender: UIButton) {
        textLabel.text = ""
        textField.text = ""
    }
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

