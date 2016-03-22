//
//  Menu.swift
//  SwiftAmination
//
//  Created by Duc Nguyen on 322//16.
//  Copyright © 2016 DUC NINJA. All rights reserved.
//

import Foundation

class Menu: NSObject {
	var title: String?
	var type: LeftMenuType?
	
	init(title: String, type: LeftMenuType) {
		self.title = title
		self.type = type
	}
}