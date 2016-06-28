//
//  TableCustomView.swift
//  Custom-table-view
//
//  Created by mc373 on 18.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import UIKit

@IBDesignable
class TableSectionsOfCells: UITableView {
    
    lazy var tableViewModel: TableViewModel? = nil
    
    override init(frame: CGRect, style: UITableViewStyle) {
        // 1. setup any properties here
        
        // 2. call super.init(frame:)
        super.init(frame: frame, style: style)
        
        // 3. Setup view from .xib file
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        // 1. setup any properties here
        
        // 2. call super.init(coder:)
        super.init(coder: aDecoder)
        
        // 3. Setup view from .xib file
        xibSetup()
    }
    
    func xibSetup() {

        
       // self.registerClass(TableSectionUnchangeableCell.self, forCellReuseIdentifier: "TableSectionUnchangeableCell")
        self.registerNib(UINib(nibName: "TableSectionChangeableCell", bundle: nil), forCellReuseIdentifier: "TableSectionChangeableCell")
        
        self.registerNib(UINib(nibName: "TableSectionUnChangeableCell", bundle: nil), forCellReuseIdentifier: "TableSectionUnChangeableCell")
    }
    
   
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}

//MARK: extension WorkWithData
extension TableSectionsOfCells: WorkWithData {
    
    func uptadeDataInTableFromViewModel() {
        
    }
    
}

