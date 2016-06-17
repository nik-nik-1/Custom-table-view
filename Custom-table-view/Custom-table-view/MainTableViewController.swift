//
//  ViewController.swift
//  Custom-table-view
//
//  Created by mc373 on 16.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//
//http://samwize.com/2015/11/06/guide-to-customizing-uitableview-section-header-footer/

import UIKit

class MainTableViewController: UIViewController {//,UITableViewDelegate, UITableViewDataSource{
    
    //@IBOutlet weak var tableView: UITableView!
    
    
    let items = ["Item 1", "Item2", "Item3", "Item4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tableView.delegate = self
//        tableView.dataSource = self
//        
//        let headerNib = UINib(nibName: "View.TableSectionHeader", bundle: nil)
//        tableView.registerNib(headerNib, forHeaderFooterViewReuseIdentifier: "TableSectionHeader")
//        
//        let cellNib = UINib(nibName: "View.TableSectionCell", bundle: nil)
//        tableView.registerNib(cellNib, forCellReuseIdentifier: "TableSectionCell")
//        
//        let foorerNib = UINib(nibName: "View.TableSectionFooter", bundle: nil)
//        tableView.registerNib(foorerNib, forHeaderFooterViewReuseIdentifier: "TableSectionFooter")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        //        // Here, we use NSFetchedResultsController
//        //        // And we simply use the section name as title
//        //        let currSection = fetchedResultsController.sections?[section]
//        //        let title = currSection!.name
//        let title = "RRRTGDddsdadsd"
//        
//        // Dequeue with the reuse identifier
//        let cell = self.tableView.dequeueReusableHeaderFooterViewWithIdentifier("TableSectionHeader")
//        let header = cell as! TableSectionHeader
//        header.headerLabel.text = title
//        
//        return cell
//    }
//    
//    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        
//        let cell = self.tableView.dequeueReusableHeaderFooterViewWithIdentifier("TableSectionFooter")
//        let footer = cell as! TableSectionFooter
//        footer.footerLabel.text = "323232323"
//        
//        return cell
//    }
//    
//    //MARK: tableView DataSource
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return items.count
//    }
//    
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("TableSectionCell", forIndexPath: indexPath) as! TableSectionCell
//        
//        cell.cellLabel.text = items[indexPath.row]
//        
//        return cell
//    }
//    
//    //MARK: tableView Delegates
//    //#1: http://www.elicere.com/mobile/swift-blog-2-uitableview-section-header-color/
//    //#2: http://colorhunt.co/c/32089
//    
//    
//    
//    func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        let header = view as! TableSectionHeader
//        header.contentView.backgroundColor = UIColor(hex: "#FF9090",alpha: 0.8)
//        header.headerLabel.textColor = UIColor.blackColor()
//        header.alpha = 0.5
//    }
//    
//    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
////        let cell = cell as! TableSectionCell
////        cell.contentView.backgroundColor = UIColor(hex: "#FFCF7F",alpha: 0.8)
////        cell.cellLabel.textColor = UIColor.darkTextColor()
////        cell.alpha = 0.5
//    }
//    
//    func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
//        let footer = view as! TableSectionFooter//recast your view as a UITableViewHeaderFooterView
//        footer.contentView.backgroundColor = UIColor(hex: "#89C4FF",alpha: 0.8)
//        footer.footerLabel.textColor = UIColor.darkTextColor()
//        footer.alpha = 0.5//make the footer transparent
//    }
    
}

