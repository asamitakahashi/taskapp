//
//  ViewController.swift
//  taskapp
//
//  Created by user on 2020/07/25.
//  Copyright © 2020 asamin.t. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
@IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
                tableView.dataSource = self
            }

        // データの数（＝セルの数）を返すメソッド
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int {
                return 0
            }

        //　各セルを選択した時に実行されるメソッド
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
                //再利用可能な　cell をえる
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell",
                for: indexPath)

                  return cell
            }
            
            //　各セルを選択した時に実行されるメソッド
            func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                performSegue(withIdentifier: "cellSegue", sender: nil) // ←追加する
            }
            
            //　セルが削除可能なことを伝えるメソッド
            func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath)-> UITableViewCell.EditingStyle{
                return .delete
            }
            
            // Deleate ボタンが押された時に呼ばれるメソッド
            func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
         }
}



