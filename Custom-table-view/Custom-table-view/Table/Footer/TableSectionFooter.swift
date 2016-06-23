//
//  TableSectionFooter.swift
//  Custom-table-view
//
//  Created by mc373 on 16.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import UIKit

@IBDesignable
class TableSectionFooter: UIView {
    
    
    let dataModel = DataModel()
    
    @IBOutlet weak var column0: UILabel!
    @IBOutlet weak var column1: UILabel!
    @IBOutlet weak var column2: UILabel!
    @IBOutlet weak var column3: UILabel!
    
    // Our custom view from the XIB file
    var view: UIView!
    
    override init(frame: CGRect) {
        // 1. setup any properties here
        
        // 2. call super.init(frame:)
        super.init(frame: frame)
        
        // 3. Setup view from .xib file
        xibSetup()
        setDataLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        // 1. setup any properties here
        
        // 2. call super.init(coder:)
        super.init(coder: aDecoder)
        
        // 3. Setup view from .xib file
        xibSetup()
        setDataLabel()
    }
    
    func xibSetup() {
        view = loadViewFromNib()
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "View.TableSectionFooter", bundle: bundle)
        
        // Assumes UIView is top level and only object in CustomView.xib file
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view
    }
    
    func setDataLabel() {
        
        dataModel.calculateFootersValue (-1) // each row need to calculate
        let footerC = dataModel.footerCaption
        
        column0.text = footerC["0"]
        column1.text = footerC["1"]
        column2.text = footerC["2"]
        column3.text = footerC["3"]
    }

}


//class TableSectionFooter: UITableViewHeaderFooterView {
//    
//    @IBOutlet weak var footerLabel: UILabel!
//    @IBOutlet weak var conView: UIView!
//    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//    
//    
//    override init(reuseIdentifier: String?) {
//        super.init(reuseIdentifier: reuseIdentifier)
//        
//        layoutSubviews()
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        //        // 1. setup any properties here
//        //
//        //        // 2. call super.init(coder:)
//        super.init(coder: aDecoder)
//        //
//        //        // 3. Setup view from .xib file
//        
//        layoutSubviews()
//    }
//    
//    override func layoutSubviews() {
//        
//        super.layoutSubviews()
//        
//        conView?.backgroundColor = UIColor(hex: "#89C4FF",alpha: 0.8)
//        footerLabel?.textColor = UIColor.darkTextColor()
//        alpha = 0.5//make the footer transparent
//        
//    }
//    
//    /*
//     // Only override drawRect: if you perform custom drawing.
//     // An empty implementation adversely affects performance during animation.
//     override func drawRect(rect: CGRect) {
//     // Drawing code
//     }
//     */
//    
//}
