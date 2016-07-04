//
//  DataModel.swift
//  Custom-table-view
//
//  Created by mc373 on 20.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import Foundation

class DataModel {
    
    //    enum AnyToString {
    //        case IntValue(Int)
    //        case DoubleValue(Double)
    //        case FloatValue(Float)
    //        case StringValue(String)
    //    }
    //
    //    private let tempItems: [[AnyToString]] = [
    //        [.StringValue("Item 1"), .FloatValue(23), .IntValue(342),  .FloatValue(200.1)],
    //
    //        [.StringValue("Item 2"), .FloatValue(23.3), .IntValue(21),  .FloatValue(73.86)],
    //
    //        [.StringValue("Item 3"), .FloatValue(12.76), .IntValue(22),  .FloatValue(98.87)],
    //
    //        [.StringValue("Item 1"), .FloatValue(34.7), .IntValue(330),  .FloatValue(876.9)]
    //        ]
    //
    //    var items: [[AnyToString]] {
    //        return tempItems
    //    }
    
    
    init () {
        
    }
    
    //DEFAULT VARIABLE
    lazy var headerCaption: [String: String] = ["Cap": "Items of DATA", "0": "Internal", "1": "2013", "2": "2014", "3": "2015"]
    
    lazy var footerCaption: [String: String] = ["Cap": "", "0": "Total:", "1": "?", "2": "?", "3": "?"]
    
    lazy var items : [ItemsInArray] =  {//(String,Float,Float,Float)
        
        return [
            ItemsInArray(zero: "Item 1",first: 23, second: 342, third: 200.1),
            ItemsInArray(zero: "Item 2",first: 23.3, second: 21, third: 73.86),
            ItemsInArray(zero: "Item 3",first: 12.76, second: 22.5, third: 98.87),
            ItemsInArray(zero: "Item 4",first: 34.7, second: 45.6, third: 879.5)
        ]
    }()
    
    func calculateFootersValue (row:Int = -1) {
        
        if row == -1 {
            for iRow in 1..<items.count {
                calculateValueForfooter (InputRow: iRow)
            }
        } else {
            calculateValueForfooter (InputRow: row)
        }
    }
    
    private func calculateValueForfooter (InputRow row:Int) {
        footerCaption[row.description] = calculateFooterForRow(row).description
    }
    
    private func calculateFooterForRow (row:Int) -> Float {
        var valueToReturn: Float = 0
        
        for (_, value) in items.enumerate() {
            
            if row == 0 {
                continue
            }
            valueToReturn += value[row] as! Float
        }
        
        return valueToReturn
    }
    
    struct ItemsInArray {
        
        var cap: String = ""
        var items: [Float] = []
        
        init (zero: String, first: Float, second: Float, third: Float) {
            cap = zero
            items.append(0) // for more easy usage of array
            items.append(first)
            items.append(second)
            items.append(third)
        }
        
        subscript(index:Int) -> Any {
            get {
                let valueToReturn: Any
                if index == 0 {
                    valueToReturn = cap
                } else {
                    valueToReturn = items[index]
                }
                return valueToReturn
            }
            set(newElm) {
                
                if index == 0 {
                    cap = (newElm as! String)
                } else {
                    items.insert((newElm as! Float), atIndex: index)
                }
                
            }
        }
    }
    
}


