//
//  ViewController.swift
//  Exemplo1_TableView_Swift
//
//  Created by Usuário Convidado on 08/08/16.
//  Copyright © 2016 Eduardo Keneeth. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var minhaTabView: UITableView!
    
    var animal = ["Urso", "Leão", "Rinoceronte", "Girafa", "Elefante"]
    var images = ["urso.png", "leao.png", "rino.png", "girafa.png", "ele.png"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell
        celula.textLabel?.text = "\(animal[indexPath.row])"
        celula.imageView?.image = UIImage(named: "\(images[indexPath.row])")
        return celula
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var msg: String
        msg = "Selecionamos o animal \(animal[indexPath.row])"
        
        let alerta = UIAlertController(
            title: "Aviso",
            message: msg,
            preferredStyle: UIAlertControllerStyle.Alert)
        
        alerta.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertActionStyle.Default,
            handler: nil))
        
        presentViewController(alerta, animated: true, completion: nil)
    }
    
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let rodape = UIImageView(image: UIImage(named: "rodape"))
        return rodape
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIImageView(image: UIImage(named: "cabecalho"))
        return header
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 75
    }

}

