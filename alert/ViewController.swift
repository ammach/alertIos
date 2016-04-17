//
//  ViewController.swift
//  alert
//
//  Created by adhoc on 09/07/1437 AH.
//  Copyright © 1437 AH adhoc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func alert(sender: AnyObject) {
        
        let alert=UIAlertController(title: "formulaire", message: "veuillez saisir vos infos", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "cancel", style: UIAlertActionStyle.Default, handler:nil))
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: { (actionman) in
            print("ok")
        }))
        
        alert.addTextFieldWithConfigurationHandler { (field) in
            field.placeholder="entrer votre nom"
        }
        
        self.presentViewController(alert, animated: true) { 
            print("finished")
        }
    }

}

