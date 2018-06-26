//
//  Category.swift
//  taskapp
//
//  Created by Ota Yusei on 2018/06/26.
//  Copyright © 2018年 yuusei. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    // 管理用 ID。プライマリーキー
    @objc dynamic var id = 0
    
    //カテゴリーネーム
    @objc dynamic var name = ""
    
    /**
     id をプライマリーキーとして設定
     */
    override static func primaryKey() -> String? {
        return "id"
    }
}
