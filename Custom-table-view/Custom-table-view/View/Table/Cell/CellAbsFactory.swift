//
//  CellAbsFactory.swift
//  Custom-table-view
//
//  Created by mc373 on 04.07.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import Foundation
import UIKit


protocol CellData {
    func setDataInCell (items massOfData: DataModel.ItemsInArray)
}

extension TableSectionChangeableCell: CellData {
    
    func setDataInCell (items massOfData: DataModel.ItemsInArray) {
        
        column0.text = massOfData[0] as? String
        column1.text = (massOfData[1] as! Float).description
        column2.text = (massOfData[2] as! Float).description
        column3.text = (massOfData[3] as! Float).description
    }
}

extension TableSectionUnchangeableCell: CellData {
    
    func setDataInCell (items massOfData: DataModel.ItemsInArray) {
        
        column0.text = massOfData[0] as? String
        column1.text = (massOfData[1] as! Float).description
        column2.text = (massOfData[2] as! Float).description
        column3.text = (massOfData[3] as! Float).description
    }
}

class CellsFactory {
    
    //  Фабричный метод не переопределяется потомками.
    //  Обращиясь к нему, клиент получает экземпляр конкретной
    //  фабрики, на основании заданных настроек
    class final func factoryOfType(sign: UITableViewCell) -> CellsFactory{
        if sign is TableSectionChangeableCell {
            return ChangeableCellFactory(inputCell: sign)
        } else if sign is TableSectionUnchangeableCell {
            return UnchangeableCellFactory(inputCell: sign)
        } else {
            return CellsFactory()
        }
    }
    
    func setDataInCell (items massOfData: DataModel.ItemsInArray) {
        //by default - nothing to do
    }
}

class ChangeableCellFactory: CellsFactory {
    
    private var cell: TableSectionChangeableCell?
    
    init (inputCell: UITableViewCell) {
        cell = inputCell as? TableSectionChangeableCell
    }
    
    override func setDataInCell (items massOfData: DataModel.ItemsInArray) {
        cell?.setDataInCell(items: massOfData)
    }
}

class UnchangeableCellFactory: CellsFactory {
    private var cell: TableSectionUnchangeableCell?
    
    init (inputCell: UITableViewCell) {
        cell = inputCell as? TableSectionUnchangeableCell
    }
    
    override func setDataInCell (items massOfData: DataModel.ItemsInArray) {
        cell?.setDataInCell(items: massOfData)
    }
}
