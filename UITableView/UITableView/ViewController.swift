//
//  ViewController.swift
//  UITableView
//
//  Created by nds on 21/05/17.
//  Copyright © 2017 nds. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    var names=["Mauricio","Felipe","Gabriel","Gaby","Aline","Tia Isaura","Mauricio","Felipe","Gabriel","Gaby","Aline","Tia Isaura","Mauricio","Felipe","Gabriel","Gaby","Aline","Tia Isaura","Mauricio","Felipe","Gabriel","Gaby","Aline","Tia Isaura","Mauricio","Felipe","Gabriel","Gaby","Aline","Tia Isaura"]
    var filmes=["X-men","Star Wars","Deadpool","X-men","Star Wars","Deadpool","X-men","Star Wars","Deadpool","X-men","Star Wars","Deadpool","X-men","Star Wars","Deadpool","X-men","Star Wars","Deadpool"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myTableView.dataSource=self
        self.myTableView.delegate=self
        self.myTableView.tableFooterView = UIView()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}

extension ViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section==0){
            return self.names.count
        }else{
            return self.filmes.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        if(indexPath.section==0){
            cell.textLabel?.text = self.names[indexPath.row]
        }else{
            cell.textLabel?.text = self.filmes[indexPath.row]
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if(section==0){
            return "Names:"
        }else{
            return "Movies:"
        }
    }
}



