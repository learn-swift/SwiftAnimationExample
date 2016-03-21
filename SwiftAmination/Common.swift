//
//  Common.swift
//  SwiftAmination
//
//  Created by Duc Nguyen on 321//16.
//  Copyright © 2016 DUC NINJA. All rights reserved.
//

import Foundation
import UIKit

func initViewController(storyboard: String, storyid: String) -> (UIViewController) {
	let storyboard = UIStoryboard(name: storyboard, bundle: nil) ;
	let viewController = storyboard.instantiateViewControllerWithIdentifier(storyid) ;
	return viewController;
}

let APP_DELEGATE = UIApplication.sharedApplication().delegate as! AppDelegate
let MODEL_NAME = UIDevice.currentDevice().modelName

struct DeviceType {
	static let IS_IPHONE_4      = "iPhone 4"
	static let IS_IPHONE_4S     = "iPhone 4s"
	static let IS_IPHONE_5      = "iPhone 5"
	static let IS_IPHONE_5C     = "iPhone 5c"
	static let IS_IPHONE_5S     = "iPhone 5s"
	static let IS_IPHONE_6      = "iPhone 6"
	static let IS_IPHONE_6_PLUS = "iPhone 6 Plus"
	static let IS_IPHONE_6S     = "iPhone 6s"
	static let IS_IPHONE_6S_PLUS = "iPhone 6s Plus"
}

typealias JSONDictionary = [String: AnyObject]
typealias JSONArray      = Array<AnyObject>



