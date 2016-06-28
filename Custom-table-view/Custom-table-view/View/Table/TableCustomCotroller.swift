//
//  TableCustomCotroller.swift
//  Custom-table-view
//
//  Created by mc373 on 18.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import UIKit


class TableCustomCotroller: UITableViewController{
    
    lazy var tableViewModel: TableViewModel? = nil
    var dataModel: DataModel? {
        if tableViewModel != nil {
            return tableViewModel!.dataModel
        } else {
           return nil
        }
     }
    
    //    let name = (self.view as CustomTable).nameOfTableSectionInstanse
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        //        let cellNib = UINib(nibName: "TableSectionCell", bundle: nil)
        //        tableView.registerNib(cellNib, forCellReuseIdentifier: "TableSectionCell")
        
        initGestureOnView()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        var numberOfRows: Int = 0
        if self.dataModel != nil {
         numberOfRows = dataModel!.items.count
        }
        
        return numberOfRows
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let nameOfTableSectionInstanse = getNameOfTableSectionInstanse ()
        
        var cell = tableView.dequeueReusableCellWithIdentifier(nameOfTableSectionInstanse, forIndexPath: indexPath)
        
        if nameOfTableSectionInstanse == "TableSectionChangeableCell" {
            cell = cell as! TableSectionChangeableCell
        } else if nameOfTableSectionInstanse == "TableSectionUnChangeableCell" {
            cell = cell as! TableSectionUnchangeableCell
        } else {
            return cell
        }
        
        //        if (cell == nil) {
        //////            // Load the nib and assign an owner
        //////            let topLevelObjects = NSBundle.mainBundle().loadNibNamed("TableSectionUnchangeableCell", owner: self, options: nil);
        //    OR : !!!!!
        //////            cell = topLevelObjects.first as? TableSectionUnchangeableCell
        //            cell = NSBundle.mainBundle().loadNibNamed("TableSectionUnchangeableCell", owner: nil, options: nil)[0] as? TableSectionUnchangeableCell
        //        }
        
        // Configure the cell..
       
//        if self.dataModel != nil {
//            let massOfData = dataModel!.items[indexPath.row]
//            
//            
//            
//            if cell is TableSectionChangeableCell || cell is TableSectionUnchangeableCell {
//                cell.column0?.text = massOfData[0] as? String
//                cell.column1?.text = (massOfData[1] as? Float)?.description
//                cell!.column2?.text = (massOfData[2] as? Float)?.description
//                cell!.column3?.text = (massOfData[3] as? Float)?.description
//            }
//        }
        
        
        return cell
    }
    
    
//    func setDataInCell <T> (cell: T, indexPath: NSIndexPath) {
//        if self.dataModel != nil {
//            let massOfData = dataModel!.items[indexPath.row]
//            
////            if cell is TableSectionChangeableCell || cell is TableSectionUnchangeableCell {
//                cell.column0.text = massOfData[0] as? String
//                cell?.column1?.text = (massOfData[1] as? Float)?.description
//                cell?.column2?.text = (massOfData[2] as? Float)?.description
//                cell?.column3?.text = (massOfData[3] as? Float)?.description
////            }
//        }
//
//    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        //
        //        let cell = cell as! TableSectionUnchangeableCell
        //        cell.contentView.backgroundColor = UIColor(hex: "#FFCF7F",alpha: 0.8)
        ////        cell.cellLabel.textColor = UIColor.darkTextColor()
        //        cell.alpha = 0.5
    }
    
    
    
    //MARK: Gesture func.
    
    func initGestureOnView() {
        //added gesture to table
        let tap2recognizer = UITapGestureRecognizer(target: self, action: #selector(cellDoubleTapped(_:)))
        tap2recognizer.numberOfTapsRequired = 2
        self.tableView.addGestureRecognizer(tap2recognizer)
        
    }
    
    func cellDoubleTapped (recognizer: UIGestureRecognizer) {
        
        if recognizer.state == UIGestureRecognizerState.Ended {
            let view1:UIView = recognizer.view!;
            print("\(view1.tag)");
            
            recognizer.view!.subviews[0]
            
            let tapLocation = recognizer.locationInView(self.tableView)
            if let tapIndexPath = tableView.indexPathForRowAtPoint(tapLocation) {
                if let tapCell = self.tableView.cellForRowAtIndexPath(tapIndexPath) {
                    // Tap happened. Do stuff!
                    
                }
            }
        }
    }
    
    //MARK: func. of view part
    func setNameOfTableSectionInstanse (canEditData: Bool) {
        if tableViewModel != nil {
            tableViewModel!.setNameOfTableSectionInstanse(canEditData)
        }
    }
    
    func getNameOfTableSectionInstanse () -> String {
        return tableViewModel!.getNameOfTableSectionInstanse()
    }
    
    func getParamCanEditDataInCell () -> Bool {
        
        var valueToReturn: Bool = false
        
        if tableViewModel == nil {
            valueToReturn = TableViewModel.canEditDataInCellBydefault
        } else {
           valueToReturn = tableViewModel!.canEditDataInCellBydefault
        }
        
        return valueToReturn
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {1
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
     if editingStyle == .Delete {
     // Delete the row from the data source
     tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
     } else if editingStyle == .Insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

//MARK: extension WorkWithData
extension TableCustomCotroller: WorkWithData {
    
    func uptadeDataInTableFromViewModel() {
        self.tableView.reloadData()
    }
    
}

