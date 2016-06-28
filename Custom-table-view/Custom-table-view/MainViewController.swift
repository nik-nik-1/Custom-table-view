//
//  MainViewController.swift
//  Custom-table-view
//
//  Created by mc373 on 20.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var table1: CustomTable!
    @IBOutlet weak var table2: CustomTable!
    
    
    override func viewDidLoad() {
       
        table1.tableViewModel = TableViewModel()
        table1.uptadeDataInTableFromViewModel()

        table2.tableViewModel = TableViewModel()
        table2.uptadeDataInTableFromViewModel()
    }
    
//    let table1 = TableViewModel()
//    //table1.
//    let table2 = TableViewModel()

}
