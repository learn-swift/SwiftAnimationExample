//
//  AppDelegate.swift
//  SwiftAmination
//
//  Created by Duc Nguyen on 321//16.
//  Copyright © 2016 DUC NINJA. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	
	var window: UIWindow?
	var navigation: UINavigationController?
	var mainViewController: MainViewController?
	var leftViewController: LeftViewController?
	var loginViewController: LoginViewController?
	var slideMenuController: SlideMenuController?
	
	var isLoggedIn = false
	
	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
		window = UIWindow(frame: UIScreen.mainScreen().bounds);
		initSlideViewController()
		return true
	}
	
	func initSlideViewController() {
		let storyboard = UIStoryboard(name: "Main", bundle: nil);
		mainViewController = storyboard.instantiateViewControllerWithIdentifier("MainViewController") as? MainViewController
		loginViewController = LoginViewController(nibName: "LoginViewController", bundle: nil);
		leftViewController = LeftViewController(nibName: "LeftViewController", bundle: nil)
		navigation = UINavigationController(rootViewController: mainViewController!);

		slideMenuController = SlideMenuController(mainViewController: navigation!, leftMenuViewController: leftViewController!)
		
		
		if checkLoggedIn() == true {
			gotoMain()
		} else {
			showLoginScreen()
		}
		
		self.window?.makeKeyAndVisible()
	}
	
	func showLoginScreen(){
		navigation = UINavigationController(rootViewController: loginViewController!);
		window!.rootViewController = navigation
	}
	
	func gotoMain(){

		window!.rootViewController = slideMenuController
	}
	
	func checkLoggedIn() -> Bool{
		if ((NSUserDefaults.standardUserDefaults().valueForKey("isLoggedIn")) != nil) {
			return NSUserDefaults.standardUserDefaults().boolForKey("isLoggedIn")
		}
		return false
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
	
	func pushViewController(viewController: UIViewController) {
		APP_DELEGATE.mainViewController?.navigationController?.pushViewController(viewController, animated: true)
	}
}

