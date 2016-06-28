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
       
        let tableViewModel1 = TableViewModel()
        tableViewModel1.setNameOfTableSectionInstanse(true)
        table1.tableViewModel = tableViewModel1
        //table1.canEditDataInCell = true
        table1.uptadeDataInTableFromViewModel()

        let tableViewModel2 = TableViewModel()
        tableViewModel2.setNameOfTableSectionInstanse(false)
        table2.tableViewModel = tableViewModel2
        table2.uptadeDataInTableFromViewModel()
    }
    
//    let table1 = TableViewModel()
//    //table1.
//    let table2 = TableViewModel()

}
