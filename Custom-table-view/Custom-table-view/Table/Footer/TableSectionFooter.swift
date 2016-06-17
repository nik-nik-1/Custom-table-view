//
//  TableSectionFooter.swift
//  Custom-table-view
//
//  Created by mc373 on 16.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import UIKit


class TableSectionFooter: UITableViewHeaderFooterView {
    
    @IBOutlet weak var footerLabel: UILabel!
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
        
        conView?.backgroundColor = UIColor(hex: "#89C4FF",alpha: 0.8)
        footerLabel?.textColor = UIColor.darkTextColor()
        alpha = 0.5//make the footer transparent
        
    }
    
    /*
     // Only override drawRect: if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func drawRect(rect: CGRect) {
     // Drawing code
     }
     */
    
}