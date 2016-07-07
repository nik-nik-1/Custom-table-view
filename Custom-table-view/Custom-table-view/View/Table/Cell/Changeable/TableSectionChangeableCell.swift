//
//  TableSectionChangeableCell.swift
//  Custom-table-view
//
//  Created by mc373 on 17.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import UIKit

@IBDesignable
class TableSectionChangeableCell: UITableViewCell {

    @IBOutlet weak var column0: UITextField!
    @IBOutlet weak var column1: UITextField!
    @IBOutlet weak var column2: UITextField!
    @IBOutlet weak var column3: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

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


//        contentView.backgroundColor = UIColor(hex: "#FFCF7F",alpha: 0.8)
//        if cellLabel != nil {
//            cellLabel?.textColor = UIColor.darkGrayColor()
//        }
//        alpha = 0.5
    }


}
