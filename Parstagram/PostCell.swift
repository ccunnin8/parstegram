//
//  PostCell.swift
//  Parstagram
//
//  Created by Corey Cunningham MacbookAir on 3/18/21.
//  Copyright © 2021 Corey Cunningham MacbookAir. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var postAuthor: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    
    @IBOutlet weak var postComment: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
