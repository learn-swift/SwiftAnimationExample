//
//  UserLogin.swift
//  SwiftAmination
//
//  Created by Duc Nguyen on 321//16.
//  Copyright © 2016 DUC NINJA. All rights reserved.
//

import Foundation
import CryptoSwift

class UserLogin: NSObject {
	var email: String?
	var password: String?
	
	override init(){
		super.init()
	}
	
	init(email: String, password: String){
		super.init()
		self.email = email
		self.password = password.md5()
	}
}