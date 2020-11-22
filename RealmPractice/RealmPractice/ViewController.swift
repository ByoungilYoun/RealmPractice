//
//  ViewController.swift
//  RealmPractice
//
//  Created by 윤병일 on 2020/11/22.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
  
  // realm 데이터베이스 에서 데이터를 가져오기 위해서
  let realm = try! Realm()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    render()
  }
  
  // realm 데이터베이스에 있는 모든 데이터를 가져와서 화면에 뿌리기
  func render() {
    let people = realm.objects(Person.self)
    
    for person in people {
      let firstName = person.firstName
      let lastName = person.lastName
      let fullName = "\(firstName) \(lastName)"
      
      
      let label = UILabel(frame: view.bounds)
      label.text = fullName
      label.textAlignment = .center
      label.numberOfLines = 0
      view.addSubview(label)
      
      label.font = UIFont(name: "Helvetica", size: 42)
    }
  }
  
  
  
  func save () {
    let joe = Person()
    joe.firstName = "Joe"
    joe.lastName = "Smith"
    
    // add 하기 전에 beginWrite 을 해준다. 데이터베이스에 적기 시작할거다 라는 것을 알려주기 위해
    realm.beginWrite()
    realm.add(joe)
    try! realm.commitWrite()
  }


}

// Realm 에 저장할 데이터는 Object 를 상속 받아야 한다.
class Person : Object {
  @objc dynamic var firstName : String = ""
  @objc dynamic var lastName : String = ""
  @objc dynamic var age : Int = 0
}
