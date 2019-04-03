//
//  ViewController.swift
//  FindMyAge
//
//  Created by LABMAC04 on 08/02/19.
//  Copyright © 2019 Utng. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var laShowAge: UILabel!
    @IBOutlet weak var txtYearOfBirth: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    
    }

    @IBAction func BuFindDage(_ sender: Any) {
        // fire click of button
       
        GetAge()
    }
    func GetAge(){
        let yearOfBirth = Int(txtYearOfBirth.text!)
        // get current year
        let date = Date()
        let calender = Calendar.current
        let year = calender.component(.year, from:date)
        let personAge = 2019 - yearOfBirth!
        laShowAge.text = "Your age is \(personAge)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

