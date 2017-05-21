//
//  Screen2ViewController.swift
//  UINavigationController
//
//  Created by nds on 21/05/17.
//  Copyright © 2017 nds. All rights reserved.
//

import UIKit
protocol Screen2ViewControllerDelegate {
    func concat()
}

class Screen2ViewController: UIViewController, Screen2ViewControllerDelegate {
    var delegate: Screen2ViewControllerDelegate?
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblFullName: UILabel!
    var name: String?
    var lastName:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblName.text = self.name
        self.lblLastName.text = self.lastName
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        self.performSegue(withIdentifier: "SegueScreen3", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! Screen3ViewController
        vc.name = self.lblName.text!
        vc.lastName = self.lblLastName.text
        vc.delegate = self
        
    }
    
    func concat() {
        var fullName = self.name!+" "+self.lastName!
        self.lblFullName.text = fullName
        self.delegate?.concat()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
