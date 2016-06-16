//
//  ViewController.swift
//  Custom-table-view
//
//  Created by mc373 on 16.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//
//http://samwize.com/2015/11/06/guide-to-customizing-uitableview-section-header-footer/

import UIKit

class MainTableViewController: UIViewController,UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let headerNib = UINib(nibName: "TableSectionHeader", bundle: nil)
        tableView.registerNib(headerNib, forHeaderFooterViewReuseIdentifier: "TableSectionHeader")
        
        let foorerNib = UINib(nibName: "TableSectionFooter", bundle: nil)
        tableView.registerNib(foorerNib, forHeaderFooterViewReuseIdentifier: "TableSectionFooter")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //        // Here, we use NSFetchedResultsController
        //        // And we simply use the section name as title
        //        let currSection = fetchedResultsController.sections?[section]
        //        let title = currSection!.name
        let title = "RRRTGDddsdadsd"
        
        // Dequeue with the reuse identifier
        let cell = self.tableView.dequeueReusableHeaderFooterViewWithIdentifier("TableSectionHeader")
        let header = cell as! TableSectionHeader
        header.captionLabel.text = title
        
        return cell
    }
    
    //MARK: tableView DataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let  cell:UITableViewCell?
        return nill
    }
    
    //MARK: tableView Delegates
    //http://www.elicere.com/mobile/swift-blog-2-uitableview-section-header-color/
    func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! TableSectionHeader//recast your view as a UITableViewHeaderFooterView
        header.contentView.backgroundColor = UIColor(red: 0/255, green: 181/255, blue: 229/255, alpha: 1.0) //make the background color light blue
        header.captionLabel.textColor = UIColor.whiteColor() //make the text white
        header.alpha = 0.5 //make the header transparent
    }
    
    func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        let footer = view as! TableSectionFooter//recast your view as a UITableViewHeaderFooterView
        footer.contentView.backgroundColor = UIColor.darkGrayColor()
        footer.footerLabel.textColor = UIColor.lightTextColor() //make the text white
        footer.alpha = 0.5
    }
    
}

