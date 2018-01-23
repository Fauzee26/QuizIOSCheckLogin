//
//  ViewController.swift
//  QuizIOSCekLogin
//
//  Created by Muhammad Hilmy Fauzi on 1/23/18.
//  Copyright © 2018 Hilmy Corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etUser: UITextField!
    @IBOutlet weak var etPass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnLogin(_ sender: Any) {
        if (etUser.text == "") && (etPass.text == "") {
            let alertController = UIAlertController(title: "Warning",
                                                    message: "The Column can't be Empty", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        } else if (etUser.text == "bambang") && (etPass.text == "kitapastibisa") {
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                //check what segue with name passData is available or not
                if(segue.identifier == "check"){
                    let sendData = segue.destination as! LoginViewController
                }
            }
        }else{
            let alertController = UIAlertController(title: "Warning",
                                                    message: "Your Username and Password is Wrong", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

