//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Al-Ansar on 2019-02-21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBAction func changeTitle(_ sender: Any) {
        mainLabel.text = "jk! idk what I'm doing"
    }
    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

