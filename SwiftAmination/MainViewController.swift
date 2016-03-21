//
//  MainViewController.swift
//  SwiftAmination
//
//  Created by Duc Nguyen on 321//16.
//  Copyright © 2016 DUC NINJA. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
	
	func pushViewController(viewController: UIViewController){
		APP_DELEGATE.navigation?.pushViewController(viewController, animated: true)
	}
}
