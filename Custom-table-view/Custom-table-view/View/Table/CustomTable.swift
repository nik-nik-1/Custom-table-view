//
//  CustomTable.swift
//  Custom-table-view
//
//  Created by mc373 on 20.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//

//https://gist.github.com/bwhiteley/049e4bede49e71a6d2e2

import UIKit

protocol WorkWithData {

    func uptadeDataInTableFromViewModel()

}

@IBDesignable
class CustomTable: UIView {

    var tableViewModel: TableViewModel? = nil {
        didSet {
            customTableViewController.tableViewModel    = tableViewModel
            headerOfTable.tableViewModel                = tableViewModel
            footerOfTable.tableViewModel                = tableViewModel
            sectionOfCellinTable.tableViewModel         = tableViewModel
        }
    }

    @IBOutlet weak var headerOfTable: TableSectionHeader!
    @IBOutlet weak var footerOfTable: TableSectionFooter!
    @IBOutlet weak var sectionOfCellinTable: TableSectionsOfCells!

    var canEditDataInCell: Bool {
        get {
            return customTableViewController.getParamCanEditDataInCell()
        }

        set {
            customTableViewController.setNameOfTableSectionInstanse(newValue)
        }
    }

   // Our custom view from the XIB file
    var view: UIView!

    @IBOutlet private var customTableViewController: TableCustomCotroller!

    override init(frame: CGRect) {
        // 1. setup any properties here

        // 2. call super.init(frame:)
        super.init(frame: frame)

        // 3. Setup view from .xib file
        xibSetup()
        //setupViewModel()
    }

    required init?(coder aDecoder: NSCoder) {
        // 1. setup any properties here

        // 2. call super.init(coder:)
        super.init(coder: aDecoder)

        // 3. Setup view from .xib file
        xibSetup()
        //setupViewModel()
    }

    func setupViewModel() {

    }

    func xibSetup() {

        view = loadViewFromNib()

        // use bounds not frame or it'll be offset
        view.frame = bounds

		//swiftlint:disable line_length
        // Make the view stretch with containing view
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
		//swiftlint:enable line_length

        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)

    }

    func loadViewFromNib() -> UIView {

        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "CustomTable", bundle: bundle)

        // Assumes UIView is top level and only object in CustomView.xib file
        let view = nib.instantiateWithOwner(self, options: nil)[0] as? UIView
        return view!
    }

    //MARK: func. for controll
    func uptadeDataInTableFromViewModel() {
        customTableViewController.uptadeDataInTableFromViewModel()
        headerOfTable.uptadeDataInTableFromViewModel()
        footerOfTable.uptadeDataInTableFromViewModel()
    }

}
