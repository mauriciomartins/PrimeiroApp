//
//  ViewController.swift
//  UINavigationController
//
//  Created by nds on 21/05/17.
//  Copyright © 2017 nds. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,Screen2ViewControllerDelegate{

    @IBOutlet weak var lblFullName: UILabel!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = .green
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnNext(_ sender: UIButton) {
        self.performSegue(withIdentifier: "SegueScreen2", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! Screen2ViewController
        vc.name = self.txtName.text!
        vc.lastName = self.txtLastName.text
        vc.delegate = self
        
    }
    
    func concat() {
        var fullName = self.txtName.text!+" "+self.txtLastName.text!
        self.lblFullName.text = fullName
    }
    
}

