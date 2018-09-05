//
//  ListTableViewController.swift
//  TodoSwifter
//
//  Created by 渋江一晃 on 2018/09/05.
//  Copyright © 2018年 suzumi49n. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    var resultArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if UserDefaults.standard.object(forKey: "array") != nil {
            resultArray = UserDefaults.standard.object(forKey: "array") as! [String]
            
        }
        print(resultArray)
        
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return resultArray.count
    }
    
    //セルに値を設定するデータソースメソッド
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        // セルに表示する値を設定する
        cell.textLabel!.text = resultArray[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            // スライドしたセルのindexを削除し、更新した配列を保存
            resultArray.remove(at: indexPath.row)
            UserDefaults.standard.set(resultArray, forKey: "array")
            
            // tableViewを更新
            tableView.reloadData()
            
            
        } else if editingStyle == .insert {
            
        }

    }

}
