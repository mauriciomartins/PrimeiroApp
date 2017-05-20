//
//  ViewController.swift
//  UITextFieldApp
//
//  Created by nds on 20/05/17.
//  Copyright © 2017 nds. All rights reserved.
//

import UIKit

protocol ViewControllerDelegate {
    func changeBackgroundColor()
    func changeText(name:String,lastName:String)
}

class ViewController: UIViewController {
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    var delegate: ViewControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func btnDelegate(_ sender: UIButton) {
        self.delegate?.changeBackgroundColor()
        self.delegate?.changeText(name:self.txtName.text!,lastName:self.txtLastName.text!)
    }
    
    @IBAction func btnBack(_ sender: UIButton) {
        //self.delegate?.changeBackgroundColor()
        self.dismiss(animated: true, completion: nil)
    }
}

