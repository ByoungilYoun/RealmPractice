//
//  ViewController.swift
//  RealmPractice2
//
//  Created by 윤병일 on 2020/11/22.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let realm = try! Realm()
    
    // Realm 파일 주소 알아내는 방법 (터미널에서 open 뒤에 주소를 넣어주면 된다.)
    print(Realm.Configuration.defaultConfiguration.fileURL)
    
    let myCat = Cat()
    myCat.name = "Tom"
    myCat.gender = "Female"
    myCat.color = "Gray"
    
    try! realm.write {
      realm.add(myCat)
    }
  }


}

