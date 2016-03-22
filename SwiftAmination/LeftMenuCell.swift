//
//  LeftMenuCell.swift
//  SwiftAmination
//
//  Created by Duc Nguyen on 322//16.
//  Copyright © 2016 DUC NINJA. All rights reserved.
//

import UIKit

enum LeftMenuType {
	case Home
	case Login
	case Support
	case Logout
	case NotYetImplemented
}

class LeftMenuCell: UITableViewCell {
	
	@IBOutlet weak var background: UIView!
	@IBOutlet weak var itemView: UIView!
	@IBOutlet weak var labelTitle: UILabel!
	
	var color = getRandomColor()
	var type : LeftMenuType?
	
	override func awakeFromNib() {
		super.awakeFromNib()
	}
	
	override func setSelected(selected: Bool, animated: Bool) {
		super.setSelected(selected, animated: animated)
	}
	
	func setContents(menu: Menu) {
		type					   = menu.type
		labelTitle.text            = menu.title
		labelTitle.textColor       = color
		itemView.backgroundColor   = color
		background.backgroundColor = getRandomColorWithAlpha(0.1)
	}
}
