//
//  TableViewModel.swift
//  Custom-table-view
//
//  Created by mc373 on 27.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import Foundation

class TableViewModel {
    
    //MARK: filds of Data
    let dataModel = DataModel()
    var nameOfTableSectionInstanse:String?
    static let canEditDataInCellBydefault = false
    var canEditDataInCellBydefault: Bool {return TableViewModel.canEditDataInCellBydefault }
    
    
    //MARK: func. of module
    func setNameOfTableSectionInstanse(inputParam:Bool) {
        
        nameOfTableSectionInstanse = getNameOfTableSectionInstanse(inputParam)
    }
    
    func getNameOfTableSectionInstanse(inputParam:Bool? = nil) -> String {
        
        var param = inputParam
        
        if inputParam == nil {
            param = canEditDataInCellBydefault
        }
        
        return param == true ? "TableSectionChangeableCell" : "TableSectionUnChangeableCell"
    }
    
}