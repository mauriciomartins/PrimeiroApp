//
//  Screen3ViewController.swift
//  UINavigationController
//
//  Created by nds on 21/05/17.
//  Copyright © 2017 nds. All rights reserved.
//

import UIKit

class Screen3ViewController: UIViewController {
    var delegate: Screen2ViewControllerDelegate?
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    var name: String?
    var lastName:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.txtName.text = self.name
        self.txtLastName.text = self.lastName
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnUpdateScreen1(_ sender: UIButton) {
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
