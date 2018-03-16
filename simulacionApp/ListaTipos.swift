//
//  ListaTipos.swift
//  simulacionApp
//
//  Created by Tania Ramon on 16/3/18.
//  Copyright © 2018 Tania Ramon. All rights reserved.
//

import UIKit
import CoreData

class ListaTipos: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var array = [""]
    var type:TipoComida = TipoComida()
    
    var managedContext:NSManagedObjectContext!
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
