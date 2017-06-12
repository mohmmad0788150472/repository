//
//  UserLoginPage.swift
//  Brawish
//
//  Created by Ibraheem MAC on 5/15/17.
//  Copyright © 2017 hazza. All rights reserved.
//

import UIKit

class UserLoginPage: UIViewController {

    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
 
    
    @IBAction func loginbtn() {
        
       if Email.text?.isEmpty ?? true || Password.text?.isEmpty ?? true{
            let alert = UIAlertController(title: "", message: "يرجى ملئ البيانات كاملة", preferredStyle: UIAlertControllerStyle.alert)
           alert.addAction(UIAlertAction(title: "موافق", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
 
       }else{
    
        let url="http://92.253.120.203/UserWS.asmx/Login?Email=\(Email.text!)&Password_u=\(Password.text!)"
    
        LoadURL(url: url)
       }
    }
    
    
    func LoadURL(url:String){
        do{
            let AppURL=URL(string: url)!
            let data=try Data(contentsOf: AppURL)
            
            let json=try JSONSerialization.jsonObject(with: data) as! [String:Any]
            print(json)
            
        }
        catch{
            //print("Cannot Load")
            let alert = UIAlertController(title: "", message: "يرجى التحقق من البيانات", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "موافق", style: UIAlertActionStyle.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)

        }
    }

    
}
