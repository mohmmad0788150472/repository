//
//  ViewController.swift
//  Brawish
//
//  Created by hazza on 5/10/17.
//  Copyright © 2017 hazza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var unme: UITextField!
    @IBOutlet weak var compname: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var pass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func get(_ sender: Any) {
        //let url="http://92.253.120.203/UserWS.asmx/Login?Email=\(unme.text!)&Password_u=\(pass.text!)"
        let url = "http://92.253.120.203/UserWS.asmx/Register?UserName=\(unme.text!)&CompanyName=\(compname.text!)&Address=\(address.text!)&Email=\(email.text!)&Phone=\(phone.text!)&password_u=\(pass.text!)"
        LoadURL(url: url)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func LoadURL(url:String){
        do{
            let AppURL=URL(string: url)!
            let data=try Data(contentsOf: AppURL)
            
            let json=try JSONSerialization.jsonObject(with: data) as! [String:Any]
            print(json)
        }
        catch{
            //     print("Cannot Load")
        }
    }
    
    
}
