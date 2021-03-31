//
//  ViewController.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-02-17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let user = User(id: "0", name: "Jack")
        if let dataUser = try? JSONEncoder().encode(user) {
            debugPrint(String(data: dataUser, encoding: .utf8))
        }
    }


}
