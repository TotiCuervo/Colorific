//
//  ViewController.swift
//  Colorific
//
//  Created by Toti Cuervo on 3/29/20.
//  Copyright © 2020 Toti Cuervo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    let colors : [UIColor] = [UIColor.red, UIColor.blue, UIColor.yellow, UIColor.green, UIColor.cyan]
    
    var selectedColor : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.backgroundColor = self.colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.selectedColor = self.colors[indexPath.row]
        self.performSegue(withIdentifier: "toShowScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toShowScreen" {
            segue.destination.view.backgroundColor = self.selectedColor
        }
    }

}

