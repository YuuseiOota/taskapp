//
//  CategoryViewController.swift
//  taskapp
//
//  Created by Ota Yusei on 2018/06/26.
//  Copyright © 2018年 yuusei. All rights reserved.
//

import UIKit
import RealmSwift

class CategoryViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    var category: Category!
    
    // Realmインスタンスを取得する
    let realm = try! Realm()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if nameTextField.text != "" {
            try! realm.write {
                self.category.name = nameTextField.text!
                self.realm.add(self.category, update: true)
            }
        }

        
        super.viewWillDisappear(animated)

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
