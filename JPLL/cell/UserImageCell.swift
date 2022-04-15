//
//  UserImageCell.swift
//  JPLL
//
//  Created by Sarah Jaysmith on 2022-03-25.
//

import UIKit

class UserImageCell: UITableViewCell {
    
    @IBOutlet weak var currentImageView: UIImageView!
    
    func updateView(user: User){
        currentImageView.image = user.image
    }
}
