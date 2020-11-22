//
//  Cat.swift
//  RealmPractice2
//
//  Created by 윤병일 on 2020/11/22.
//

import Foundation
import RealmSwift

class Cat : Object {
  
  @objc dynamic var name : String?
  @objc dynamic var color : String?
  @objc dynamic var gender : String?
  
}
