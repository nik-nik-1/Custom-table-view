//
//  TableCustomCotroller.swift
//  Custom-table-view
//
//  Created by mc373 on 18.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import UIKit


class TableCustomCotroller: UITableViewController {

	lazy var tableViewModel: TableViewModel? = nil
	var dataModel: DataModel? {
		if tableViewModel != nil {
			return tableViewModel!.dataModel
		} else {
			return nil
		}
	}

	override func viewDidLoad() {
		super.viewDidLoad()

		// Uncomment the following line to preserve selection between presentations
		// self.clearsSelectionOnViewWillAppear = false

		// Uncomment the following line to display an Edit button in the
		//navigation bar for this view controller.
		// self.navigationItem.rightBarButtonItem = self.editButtonItem()

		initGestureOnView()

	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	// MARK: - Table view data source

	override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		// #warning Incomplete implementation, return the number of sections
		return 1
	}

	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		// #warning Incomplete implementation, return the number of rows

		var numberOfRows: Int = 0
		if self.dataModel != nil {
			numberOfRows = dataModel!.items.count
		}

		return numberOfRows
	}

	// swiftlint:disable line_length
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

		let nameOfTableSectionInstanse = getNameOfTableSectionInstanse ()

		let cell = tableView.dequeueReusableCellWithIdentifier(nameOfTableSectionInstanse, forIndexPath: indexPath)


		//        if (cell == nil) {
		//////            // Load the nib and assign an owner
		//////            let topLevelObjects = NSBundle.mainBundle().loadNibNamed("TableSectionUnchangeableCell", owner: self, options: nil);
		//    OR : !!!!!
		//////            cell = topLevelObjects.first as? TableSectionUnchangeableCell
		//            cell = NSBundle.mainBundle().loadNibNamed("TableSectionUnchangeableCell", owner: nil, options: nil)[0] as? TableSectionUnchangeableCell
		//        }

		// Configure the cell..
		CellsFactory.factoryOfType(cell).setDataInCell(items: dataModel!.items[indexPath.row])

		return cell
	}
	// swiftlint:enable line_length

	// swiftlint:disable line_length
	override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell,
	                        forRowAtIndexPath indexPath: NSIndexPath) {
		//
		//        let cell = cell as! TableSectionUnchangeableCell
		//        cell.contentView.backgroundColor = UIColor(hex: "#FFCF7F",alpha: 0.8)
		////        cell.cellLabel.textColor = UIColor.darkTextColor()
		//        cell.alpha = 0.5
	}
	// swiftlint:enable line_length

	//MARK: Gesture func.
	func initGestureOnView() {
		//added gesture to table
		let tap2recognizer = UITapGestureRecognizer(target: self, action: #selector(cellDoubleTapped(_:)))
		tap2recognizer.numberOfTapsRequired = 2
		self.tableView.addGestureRecognizer(tap2recognizer)

	}

	func cellDoubleTapped (recognizer: UIGestureRecognizer) {

		if recognizer.state == UIGestureRecognizerState.Ended {
			let view1: UIView = recognizer.view!
			print("\(view1.tag)")

			recognizer.view!.subviews[0]

			let tapLocation = recognizer.locationInView(self.tableView)
			if let tapIndexPath = tableView.indexPathForRowAtPoint(tapLocation) {
				if let tapCell = self.tableView.cellForRowAtIndexPath(tapIndexPath) {
					// Tap happened. Do stuff!

					let location = recognizer.locationInView(tapCell)
					let selectedView = tapCell.hitTest(location, withEvent: nil)
					print(selectedView?.tag)
				}
			}
		}
	}

	//MARK: func. of view part
	func setNameOfTableSectionInstanse (canEditData: Bool) {
		if tableViewModel != nil {
			tableViewModel!.setNameOfTableSectionInstanse(canEditData)
		}
	}

	func getNameOfTableSectionInstanse () -> String {

		var valueToReturn: String = ""

		if tableViewModel == nil {
			valueToReturn = TableViewModel.getNameOfTableSectionInstanse()
		} else {
			valueToReturn = tableViewModel!.nameOfTableSectionInstanse!
		}

		return valueToReturn
	}

	func getParamCanEditDataInCell () -> Bool {

		var valueToReturn: Bool = false

		if tableViewModel == nil {
			valueToReturn = TableViewModel.canEditDataInCellBydefault
		} else {
			valueToReturn = tableViewModel!.canEditDataInCellBydefault
		}

		return valueToReturn
	}

}

//MARK: extension WorkWithData
extension TableCustomCotroller: WorkWithData {

	func uptadeDataInTableFromViewModel() {
		self.tableView.reloadData()
	}
}
