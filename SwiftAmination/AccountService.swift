//
//  AccountService.swift
//  SwiftAmination
//
//  Created by Duc Nguyen on 321//16.
//  Copyright © 2016 DUC NINJA. All rights reserved.
//

import Foundation

class AccountService {
	static let sharedInstance = AccountService()
	
	var users : [JSONDictionary]?
	var user  : User?
	init(){
		users = getData("data")
	}
	
	func findByEmail(email: String) -> User? {
		let user = users?.filter{String($0["email"]) == email}.first
		if user != nil{
			return User(dict: user!)
			
		}
		return nil
	}
	
	func findUser(user: UserLogin) -> User? {
		let u = users?.filter{String($0["email"]!) == user.email}.first
		if u != nil {
			self.user = User(dict: u!)
			if user.password == self.user?.password {
				return self.user
			}
		}
		return nil
	}
	
	
	func findAll() -> [User]? {
		//return users.map{ User(dict: $0) }
		return getUsers()
	}
	
	func getUsers() -> [User]{
		var users: [User] = []
		for u in self.users!{
			users.append(User(dict: u))
		}
		
		return users
	}
	
	func getData(source: String?) -> [JSONDictionary] {
		let path = NSBundle.mainBundle().pathForResource(source, ofType: "json")
		let data = try! NSData(contentsOfFile: path!, options: NSDataReadingOptions.DataReadingMapped)
		
		if let array = try? NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) as? [JSONDictionary] {
			return array!
		}
		return []
	}
	
}