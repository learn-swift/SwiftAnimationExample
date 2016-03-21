//
//  User.swift
//  SwiftAmination
//
//  Created by Duc Nguyen on 321//16.
//  Copyright © 2016 DUC NINJA. All rights reserved.
//

import Foundation

class User: NSObject {
	var id: String?
	var email: String?
	var password: String?
	var name: String?
	var age: String?
	
	override init() {
		super.init()
	}
	
	init(dict: JSONDictionary) {
		if let id = dict["id"] as? String {
			self.id = id
		} else {
			self.id = ""
		}

		if let email = dict["email"] as? String {
			self.email = email
		} else {
			self.email = ""
		}
		
		if let password = dict["password"] as? String {
			self.password = password
		} else {
			self.password = ""
		}
		
		if let name = dict["name"] as? String {
			self.name = name
		} else {
			self.name = ""
		}
		
		if let age = dict["age"] as? String {
			self.age = age
		} else {
			self.age = ""
		}
	}
}