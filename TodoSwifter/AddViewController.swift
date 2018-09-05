//
//  AddViewController.swift
//  TodoSwifter
//
//  Created by 渋江一晃 on 2018/09/05.
//  Copyright © 2018年 suzumi49n. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    var array = [String]()
    
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // 画面が表示されるたびに呼ばれる
    override func viewWillAppear(_ animated: Bool) {
        
    }

    @IBAction func add(_ sender: Any) {
        
        if UserDefaults.standard.object(forKey: "array") != nil {
            array = UserDefaults.standard.object(forKey: "array") as! [String]
        }
        
        array.append(textField.text!)
        
        UserDefaults.standard.set(array, forKey: "array")
        
        self.navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    


}
