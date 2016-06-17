//
//  TableSectionHeader.swift
//  Custom-table-view
//
//  Created by mc373 on 16.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import UIKit


class TableSectionHeader: UITableViewHeaderFooterView {
    
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var conView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        layoutSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        //        // 1. setup any properties here
        //
        //        // 2. call super.init(coder:)
        super.init(coder: aDecoder)
        //
        //        // 3. Setup view from .xib file
        
        layoutSubviews()
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        conView?.backgroundColor = UIColor(hex: "#FF9090",alpha: 0.8)
        headerLabel?.textColor = UIColor.blackColor()
        alpha = 0.5
        
    }
    
    /*
     // Only override drawRect: if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func drawRect(rect: CGRect) {
     // Drawing code
     }
     */
}
