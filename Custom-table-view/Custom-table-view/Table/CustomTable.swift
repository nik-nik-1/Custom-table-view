//
//  CustomTable.swift
//  Custom-table-view
//
//  Created by mc373 on 20.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//

//https://gist.github.com/bwhiteley/049e4bede49e71a6d2e2

import UIKit

@IBDesignable
class CustomTable: UIView {

    @IBOutlet weak var headerOfTable: TableSectionHeader!
    @IBOutlet weak var footerOfTable: TableSectionFooter!
    @IBOutlet weak var sectionOfCellinTable: TableCustomView!
    
 //   @IBOutlet private var contentView:UIView?
    // other outlets
    
//    override init(frame: CGRect) { // for using CustomView in code
//        super.init(frame: frame)
//        self.commonInit()
//    }
//    
//    required init?(coder aDecoder: NSCoder) { // for using CustomView in IB
//        super.init(coder: aDecoder)
//        self.commonInit()
//    }
//    
//    private func commonInit() {
//        NSBundle.mainBundle().loadNibNamed("View.CustomTable", owner: self, options: nil)
//        guard let content = contentView else { return }
//        content.frame = self.bounds
//        content.autoresizingMask = [.FlexibleHeight, .FlexibleWidth]
//        self.addSubview(content)
//    }
    
   // Our custom view from the XIB file
    var view: UIView!
    
    @IBOutlet var customTableViewController: TableCustomCotroller!
    
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
        
        customTableViewController.viewDidLoad()
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "View.CustomTable", bundle: bundle)
        
        // Assumes UIView is top level and only object in CustomView.xib file
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view
    }

    
    
}
