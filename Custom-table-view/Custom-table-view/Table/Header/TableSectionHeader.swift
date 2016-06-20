//
//  TableSectionHeader.swift
//  Custom-table-view
//
//  Created by mc373 on 16.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import UIKit

@IBDesignable
class TableSectionHeader: UIView {//UITableViewHeaderFooterView
//{
    
    // Outlets
    @IBOutlet weak var label1: UILabel!
    //@IBOutlet weak var conView: UIView!
    
    // Our custom view from the XIB file
    var view: UIView!
    
    override init(frame: CGRect) {
        // 1. setup any properties here
        
        // 2. call super.init(frame:)
        super.init(frame: frame)
        
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
        let nib = UINib(nibName: "View.TableSectionHeader", bundle: bundle)
        
        // Assumes UIView is top level and only object in CustomView.xib file
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view
    }
    
    
    
    
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
//        conView?.backgroundColor = UIColor(hex: "#FF9090",alpha: 0.8)
//        headerLabel?.textColor = UIColor.blackColor()
//        alpha = 0.5
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
}
