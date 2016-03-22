//
//  BaseViewController.swift
//  SwiftAmination
//
//  Created by Duc Nguyen on 322//16.
//  Copyright © 2016 DUC NINJA. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		let nav = self.navigationController?.navigationBar
		nav?.barStyle = UIBarStyle.Black
		nav?.tintColor = UIColor.yellowColor()
		let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
		imageView.contentMode = .ScaleAspectFit
		let image = UIImage(named: "coffee_maker")
		imageView.image = image
		navigationItem.titleView = imageView
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
	
	func pushRootViewController(viewController : UIViewController) {
		let navi = UINavigationController(rootViewController: viewController)
		navi.interactivePopGestureRecognizer!.enabled = false
		self.slideMenuController()?.changeMainViewController(navi, close: true)
	}
}
