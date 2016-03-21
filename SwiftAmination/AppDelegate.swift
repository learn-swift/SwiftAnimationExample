//
//  AppDelegate.swift
//  SwiftAmination
//
//  Created by Duc Nguyen on 321//16.
//  Copyright © 2016 DUC NINJA. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	
	var window: UIWindow?
	var navigation: UINavigationController?
	var loginViewController: LoginViewController?
	var isLoggedIn = false
	
	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
		window = UIWindow(frame: UIScreen.mainScreen().bounds);
		checkLogin()
		return true
	}
	
	func checkLogin() {
		// if((NSUserDefaults.standardUserDefaults().valueForKey("isLoggedIn")) != nil) {
		// isLoggedIn = NSUserDefaults.standardUserDefaults().boolForKey("isLoggedIn")
		// } else {
		// goToLogin()
		// }
		goToLogin()
	}
	func goToLogin() {
		NSUserDefaults.standardUserDefaults().setBool(false, forKey: "isLoggedIn")
		loginViewController = LoginViewController(nibName: "LoginViewController", bundle: nil);
		navigation = UINavigationController(rootViewController: loginViewController!);
		window?.rootViewController = navigation
	}
	func applicationWillResignActive(application: UIApplication) {
	}
	
	func applicationDidEnterBackground(application: UIApplication) {
	}
	
	func applicationWillEnterForeground(application: UIApplication) {
	}
	
	func applicationDidBecomeActive(application: UIApplication) {
	}
	
	func applicationWillTerminate(application: UIApplication) {
	}
	
	func pushViewController(uiViewcontroller: UIViewController) {
	}
}



