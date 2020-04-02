//
//  ColorViewController.swift
//  Colorific
//
//  Created by Toti Cuervo on 3/31/20.
//  Copyright © 2020 Toti Cuervo. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {


    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        switch self.view.backgroundColor {
        case UIColor.red:
            self.colorLabel.text = "Red"
        case UIColor.blue:
            self.colorLabel.text = "Blue"
        case UIColor.yellow:
            self.colorLabel.text = "Yellow"
        case UIColor.green:
            self.colorLabel.text = "Green"
        case UIColor.cyan:
            self.colorLabel.text = "Cyan"
        default:
            self.colorLabel.text = "Error"
        }
    }
    


}
