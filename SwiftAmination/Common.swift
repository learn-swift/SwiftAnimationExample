//
//  Common.swift
//  SwiftAmination
//
//  Created by Duc Nguyen on 321//16.
//  Copyright © 2016 DUC NINJA. All rights reserved.
//

import Foundation
import UIKit

typealias JSONDictionary = [String: AnyObject]
typealias JSONArray = Array<AnyObject>

let APP_DELEGATE = UIApplication.sharedApplication().delegate as! AppDelegate
let MODEL_NAME = UIDevice.currentDevice().modelName

func initViewController(storyboard: String, storyid: String) -> (UIViewController) {
	let storyboard = UIStoryboard(name: storyboard, bundle: nil);
	let viewController = storyboard.instantiateViewControllerWithIdentifier(storyid);
	return viewController;
}

struct DeviceType {
	static let IS_IPHONE_4 = "iPhone 4"
	static let IS_IPHONE_4S = "iPhone 4s"
	static let IS_IPHONE_5 = "iPhone 5"
	static let IS_IPHONE_5C = "iPhone 5c"
	static let IS_IPHONE_5S = "iPhone 5s"
	static let IS_IPHONE_6 = "iPhone 6"
	static let IS_IPHONE_6_PLUS = "iPhone 6 Plus"
	static let IS_IPHONE_6S = "iPhone 6s"
	static let IS_IPHONE_6S_PLUS = "iPhone 6s Plus"
}

func getRandomColor() -> UIColor {
	
	let randomRed: CGFloat = CGFloat(drand48())
	
	let randomGreen: CGFloat = CGFloat(drand48())
	
	let randomBlue: CGFloat = CGFloat(drand48())
	
	return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
}

func getRandomColorWithAlpha(alpha: CGFloat = 1.0) -> UIColor {
	
	let randomRed: CGFloat = CGFloat(drand48())
	
	let randomGreen: CGFloat = CGFloat(drand48())
	
	let randomBlue: CGFloat = CGFloat(drand48())
	
	return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: alpha)
}



