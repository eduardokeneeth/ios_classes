//
//  ViewController.swift
//  Atletas
//
//  Created by Usuário Convidado on 15/08/16.
//  Copyright © 2016 Eduardo Keneeth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var meuLabel: UILabel!
    var textoDoLabel:String = ""
    
    @IBOutlet weak var countryLabel: UILabel!
    var textoDoCountryLabel:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        meuLabel.text = textoDoLabel
        countryLabel.text = textoDoCountryLabel
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

