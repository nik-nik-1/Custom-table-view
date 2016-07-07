//
//  CellHelpers.swift
//  Custom-table-view
//
//  Created by mc373 on 29.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//
//
//import Foundation
//
//
////////////////
//protocol CellOfItem: class {
//
//    var column0Data:String {get set}
//    var column1Data:String {get set}
//    var column2Data:String {get set}
//    var column3Data:String {get set}
//
//}
//
//extension TableSectionChangeableCell: CellOfItem {
//
//    var column0Data:String {get {return column0.text!} set {column0.text = newValue}}
//    var column1Data:String {get {return column1.text!} set {column1.text = newValue}}
//    var column2Data:String {get {return column2.text!} set {column2.text = newValue}}
//    var column3Data:String {get {return column3.text!} set {column3.text = newValue}}
//
//}
//
//extension TableSectionUnchangeableCell: CellOfItem {
//
//    var column0Data:String {get {return column0.text!} set {column0.text = newValue}}
//    var column1Data:String {get {return column1.text!} set {column1.text = newValue}}
//    var column2Data:String {get {return column2.text!} set {column2.text = newValue}}
//    var column3Data:String {get {return column3.text!} set {column3.text = newValue}}
//
//}
//
//CALL:
//
//    func setDataInCell (cell: CellOfItem, index indexPath: NSIndexPath) {
//        //if self.dataModel != nil {
//        let massOfData = dataModel!.items[indexPath.row]
//
//        cell.column0Data = massOfData[0] as! String
//        cell.column1Data = (massOfData[1] as! Float).description
//        cell.column2Data = (massOfData[2] as! Float).description
//        cell.column3Data = (massOfData[3] as! Float).description
//    }

/////////////
