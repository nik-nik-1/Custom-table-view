////
////  TableCustom.swift
////  Custom-table-view
////
////  Created by mc373 on 17.06.16.
////  Copyright © 2016 mc373. All rights reserved.
////
//
//import UIKit
//
//
//class TableCustom: UITableViewController {
//    
//    let items = ["Item 1", "Item2", "Item3", "Item4"]
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Uncomment the following line to preserve selection between presentations
//        // self.clearsSelectionOnViewWillAppear = false
//
//        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
//        
//        let headerNib = UINib(nibName: "View.TableSectionHeader", bundle: nil)
//        tableView.registerNib(headerNib, forHeaderFooterViewReuseIdentifier: "TableSectionHeader")
//        
//        let cellNib = UINib(nibName: "TableSectionCell", bundle: nil)
//        tableView.registerNib(cellNib, forCellReuseIdentifier: "TableSectionCell")
//        
//        let foorerNib = UINib(nibName: "View.TableSectionFooter", bundle: nil)
//        tableView.registerNib(foorerNib, forHeaderFooterViewReuseIdentifier: "TableSectionFooter")
//        
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//    //MARK: tableView DataSource
//
//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }
//
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return items.count
//    }
//
//    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        //        // Here, we use NSFetchedResultsController
//        //        // And we simply use the section name as title
//        //        let currSection = fetchedResultsController.sections?[section]
//        //        let title = currSection!.name
//        let title = "header text"
//        
//        // Dequeue with the reuse identifier
//        let cell = self.tableView.dequeueReusableHeaderFooterViewWithIdentifier("TableSectionHeader")
//        let header = cell as! TableSectionHeader
////        header.headerLabel.text = title
//        
////        header.contentView.backgroundColor = UIColor.blueColor()//UIColor(hex: "#FF9090",alpha: 0.8)
////        header.tintColor = UIColor.blueColor()
////        header.headerLabel.textColor = UIColor.blackColor()
////        header.alpha = 0.5
//
//        
//        return header
//    }
//    
//    override func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        
//        let cell = self.tableView.dequeueReusableHeaderFooterViewWithIdentifier("TableSectionFooter")
//        let footer = cell as! TableSectionFooter
//        //footer.footerLabel.text = "footer text"
//        
//        
////        footer.contentView.backgroundColor = UIColor(hex: "#89C4FF",alpha: 0.8)
////        footer.footerLabel.textColor = UIColor.darkTextColor()
////        footer.alpha = 0.5//make the footer transparent
//        
//        return footer
//    }
//    
//    
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("TableSectionCell", forIndexPath: indexPath) as! TableSectionCell
//        
//        cell.cellLabel.text = items[indexPath.row]
//        
//        return cell
//    }
//
//    
//    //MARK: tableView Delegates
//    //#1: http://www.elicere.com/mobile/swift-blog-2-uitableview-section-header-color/
//    //#2: http://colorhunt.co/c/32089
//    
//    
//    override func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
// //       let header = view as! TableSectionHeader
////        header.contentView.backgroundColor = UIColor(hex: "#FF9090",alpha: 0.8)
////        header.headerLabel.textColor = UIColor.blackColor()
////        header.alpha = 0.5
////        (view as! UITableViewHeaderFooterView).contentView.backgroundColor = UIColor.blackColor()
//        
////        view.userInteractionEnabled = false
//    }
//    
//    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
//        let cell = cell as! TableSectionCell
//        cell.contentView.backgroundColor = UIColor(hex: "#FFCF7F",alpha: 0.8)
//        cell.cellLabel.textColor = UIColor.darkTextColor()
//        cell.alpha = 0.5
//    }
//    
////    override func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
////        let footer = view as! TableSectionFooter//recast your view as a UITableViewHeaderFooterView
////        footer.contentView.backgroundColor = UIColor(hex: "#89C4FF",alpha: 0.8)
////        footer.footerLabel.textColor = UIColor.darkTextColor()
////        footer.alpha = 0.5//make the footer transparent
////    }
//    
//    
//    /*
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
//
//        // Configure the cell...
//
//        return cell
//    }
//    */
//
//    /*
//    // Override to support conditional editing of the table view.
//    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//        // Return false if you do not want the specified item to be editable.
//        return true
//    }
//    */
//
//    /*
//    // Override to support editing the table view.
//    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        if editingStyle == .Delete {
//            // Delete the row from the data source
//            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
//        } else if editingStyle == .Insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }    
//    }
//    */
//
//    /*
//    // Override to support rearranging the table view.
//    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
//
//    }
//    */
//
//    /*
//    // Override to support conditional rearranging of the table view.
//    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//        // Return false if you do not want the item to be re-orderable.
//        return true
//    }
//    */
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//    */
//    
//}
