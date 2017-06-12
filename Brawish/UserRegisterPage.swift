//
//  UserRegisterPage.swift
//  Brawish
//
//  Created by Ibraheem MAC on 5/15/17.
//  Copyright © 2017 hazza. All rights reserved.
//

import UIKit

class UserRegisterPage: UIViewController {

    @IBOutlet weak var UserName: UITextField!
    @IBOutlet weak var CompanyName: UITextField!
    @IBOutlet weak var Address: UITextField!
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Phone: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func RegButton(_ sender: UIButton) {
        
        let url = "http://92.253.120.203/UserWS.asmx/Register?UserName=\(UserName.text!)&CompanyName=\(CompanyName.text!)&Address=\(Address.text!)&Email=\(Email.text!)&Phone=\(Phone.text!)&password_u=\(Password.text!)"
        LoadURL(url: url)

    }
    
    func LoadURL(url:String){
        do{
            let AppURL=URL(string: url)!
            let data=try Data(contentsOf: AppURL)
            
            let json=try JSONSerialization.jsonObject(with: data) as! [String:Any]
            print(json)
        }
        catch{
                print("Cannot Load")
        }
    }
    

}
