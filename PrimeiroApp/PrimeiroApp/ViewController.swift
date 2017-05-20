//
//  ViewController.swift
//  PrimeiroApp
//
//  Created by nds on 20/05/17.
//  Copyright © 2017 nds. All rights reserved.
//

import UIKit


// Implementa protocolo de delegate para controlar comportamentos da tela
class ViewController: UIViewController {
    // Variável disponivel apenas na classe
    fileprivate var pessoa: Pessoa?
    @IBOutlet weak var lblNome: UILabel!
    @IBOutlet weak var lblSobreNome: UILabel!
    @IBOutlet weak var lblIdade: UILabel!
    
    // Do any additional setup after loading the view, typically from a nib.
    override func viewDidLoad() {
        super.viewDidLoad()
        	self.pessoa = Pessoa()
        self.pessoa?.nome = "Mauricio"
        self.pessoa?.idade = 32
        self.pessoa?.sobrenome = "Martins"
        self.pessoa?.endereco =  Endereco()
        self.pessoa?.endereco?.rua = "Rua Avanhandava, Bela Vista - SP"
        self.pessoa?.endereco?.numero = 709
    }

    // Dispose of any resources that can be recreated.    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func btnOK(_ sender: UIButton) {
        if let nome =  self.pessoa?.nome{
            self.lblNome.text = "Nome:" + nome
        }
        
        if let sobrenome =  self.pessoa?.sobrenome{
            self.lblSobreNome.text = "Sobrenome:" + sobrenome
        }
        
        if let idade =  self.pessoa?.idade{
            self.lblIdade.text = "Idade:" + String(idade)
        }
    }
    
    
    @IBAction func btnClear(_ sender: UIButton) {
        self.lblNome.text = ""
        self.lblSobreNome.text = ""
        self.lblIdade.text = ""
    }
}

