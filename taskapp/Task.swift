//
//  Task.swift
//  taskapp
//
//  Created by user on 2020/07/26.
//  Copyright © 2020 asamin.t. All rights reserved.
//

import RealmSwift

class Task: Object{
    //　管理用　ID. プライマリーキー
    @objc dynamic var id = 0
    
  @objc dynamic var title = ""
    
    // タイトル
    @objc dynamic var contents = ""
    
    //カテゴリ
    @objc dynamic var category = ""
    
    //　日時
    @objc dynamic var date = Date()
    
    // id を　プライマリーキーとして設定
    override static func primaryKey() -> String? {
        return "id"
    }
}
