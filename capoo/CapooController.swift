//
//  CapooController.swift
//  capoo
//
//  Created by user_07 on 2018/4/25.
//  Copyright © 2018年 Peter. All rights reserved.
//

import UIKit

class CapooController: UIViewController {
    
    
    @IBOutlet weak var CapooTextField: UITextField!
    
    @IBOutlet weak var CapooTextField2: UITextField!
    @IBOutlet weak var like: UISwitch!
    @IBOutlet weak var tmp: UIImageView!
    @IBAction func send(_ sender: Any) {
        if like.isOn == true{
            tmp.image = UIImage(named:"capoo")
        }
        else{
            tmp.image = UIImage(named:"images")
        }
        
        //print(CapooTextField2.text)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
