//
//  CommentCell.swift
//  Parstagram
//
//  Created by Corey Cunningham on 3/23/21.
//  Copyright © 2021 Corey Cunningham MacbookAir. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {

    @IBOutlet var commentLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
