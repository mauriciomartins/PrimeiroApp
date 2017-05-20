//
//  HomeViewController.swift
//  UITextFieldApp
//
//  Created by nds on 20/05/17.
//  Copyright © 2017 nds. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITextFieldDelegate, ViewControllerDelegate{
    @IBOutlet weak var txtValue: UITextField!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.txtValue.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            print(textField.text)
            // Close keyboard - remove focus on textfield
            textField.resignFirstResponder()
            // Open keyboard in  specific field
            //textField.becomeFirstResponder()
            return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //self.txtValue.resignFirstResponder()
        self.view.endEditing(true)
    }

    
    @IBAction func btnNextScreen(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier:"Tela2") as! ViewController
        vc.delegate = self
        self.present(vc,animated: true, completion: nil)
    }
    
    func changeBackgroundColor() {
        self.view.backgroundColor = .green
    }
    
    func changeText(name: String, lastName: String) {
        self.lblName.text = name
        self.lblLastName.text = lastName
    }
    
    @IBAction func btnBack(_ sender: UIButton) {
         self.dismiss(animated: true, completion: nil)
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
