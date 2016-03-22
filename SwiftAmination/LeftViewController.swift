//
//  LeftViewController.swift
//  SwiftAmination
//
//  Created by Duc Nguyen on 322//16.
//  Copyright © 2016 DUC NINJA. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController {
	
	@IBOutlet weak var table: UITableView!
	
	let menus = [
		Menu(title: "LẦU XANH",type: .Login),
		Menu(title: "MƯƠNG 18",type: .NotYetImplemented),
		Menu(title: "THIÊN ĐỊA",type: .NotYetImplemented),
		Menu(title: "LẦU XANH",type: .NotYetImplemented),
		Menu(title: "MƯƠNG 18",type: .NotYetImplemented),
		Menu(title: "MƯƠNG 18",type: .NotYetImplemented),
		Menu(title: "MƯƠNG 18",type: .NotYetImplemented),
		Menu(title: "LOG OUT",type: .Logout)
	]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		table.delegate = self
		table.dataSource = self
		table.registerNib(UINib(nibName: "LeftMenuCell", bundle: nil), forCellReuseIdentifier: "LeftMenuCell")
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
	
	
}

extension LeftViewController: UITableViewDelegate, UITableViewDataSource {
	// MARK: UITableViewDataSource
	
	func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return menus.count
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("LeftMenuCell", forIndexPath: indexPath) as! LeftMenuCell
		
		configureCell(cell, forRowAtIndexPath: indexPath)
		return cell
	}
	
	func configureCell(cell: LeftMenuCell, forRowAtIndexPath: NSIndexPath) {
		cell.setContents(self.menus[forRowAtIndexPath.row])
	}
	
	// MARK: UITableViewDelegate
	
	func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		print(indexPath.row)
		if let currentCell = tableView.cellForRowAtIndexPath(indexPath) as? LeftMenuCell{
			self.slideMenuController()?.closeLeft()
			let type: LeftMenuType = currentCell.type!
			switch (type) {
			case .Home :
				let mainViewController = initViewController("Main", storyid: "MainViewController") as! MainViewController
				APP_DELEGATE.pushViewController(mainViewController)
				break
			case .Login:
				let loginViewController = LoginViewController(nibName: "LoginViewController", bundle: nil);
				APP_DELEGATE.pushViewController(loginViewController)
				break
			case .Logout:
				NSUserDefaults.standardUserDefaults().setBool(false, forKey: "isLoggedIn")
				APP_DELEGATE.slideMenuController = nil
				APP_DELEGATE.initSlideViewController()
				APP_DELEGATE.showLoginScreen()
				break
			case .NotYetImplemented:
				let alert = UIAlertView(title: "Warning", message: "Not yet implemented!", delegate: self, cancelButtonTitle: "OK")
				alert.show()
				break
			default:
				break
			}
		}
		
	}
	
	func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
		return 64
	}
}
