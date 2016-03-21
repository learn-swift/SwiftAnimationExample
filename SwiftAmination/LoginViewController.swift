//
//  LoginViewController.swift
//  SwiftAmination
//
//  Created by Duc Nguyen on 321//16.
//  Copyright © 2016 DUC NINJA. All rights reserved.
//

import UIKit

class LoginViewController: MainViewController {
	
	@IBOutlet weak var labelHeading: UILabel!
	@IBOutlet weak var textfieldEmail: UITextField!
	@IBOutlet weak var textfieldPassword: UITextField!
	@IBOutlet weak var buttonLogin: UIButton!
	@IBOutlet weak var buttonTwitter: UIButton!
	@IBOutlet weak var imageCloud: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		APP_DELEGATE.navigation?.navigationBar.hidden = true
		
		let width = view.bounds.width
		let heigh = view.bounds.height
		
		UIView.animateWithDuration(0.5, animations: {
			self.labelHeading.center.x += width
		})
		
		UIView.animateWithDuration(20.0, delay: 0, options: .Repeat, animations: {
			self.imageCloud.center.x += width
			}, completion: nil)
		
		UIView.animateWithDuration(0.5, delay: 0.3, options: [], animations: {
			self.textfieldEmail.center.x += width
			self.textfieldPassword.center.x += width
			}, completion: nil)
		
		UIView.animateWithDuration(0.5, delay: 0.6, options: [], animations: {
			self.buttonLogin.center.y -= heigh
			}, completion: nil)
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
	
	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(true)
		
		let offsetX = view.bounds.width
		let offsetY = view.bounds.height
		labelHeading.center.x      -= offsetX
		imageCloud.center.x        -= offsetX
		textfieldEmail.center.x    -= offsetX
		textfieldPassword.center.x -= offsetX
		buttonLogin.center.y       += offsetY
	}
	
	@IBAction func actionLogin(sender: AnyObject) {
		let email = textfieldEmail.text
		let password = textfieldPassword.text?.md5()
		let u  = UserLogin(email: email!, password: password!)
		
		let user = AccountService.sharedInstance.findUser(u)
		
		if user != nil {
			let alert = UIAlertView(title: "SUCCESS", message: ":)", delegate: self, cancelButtonTitle: "OK")
			alert.show()
		} else {
			let alert = UIAlertView(title: "FAILED", message: ":(", delegate: self, cancelButtonTitle: "OK")
			alert.show()
		}
	}
	
}