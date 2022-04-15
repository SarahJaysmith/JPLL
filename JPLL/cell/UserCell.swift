//
//  UserCell.swift
//  JPLL
//
//  Created by Sarah Jaysmith on 2022-03-25.
//

import UIKit

class UserCell: UITableViewCell {
    
    //@IBOutlet weak var ageLabel: UILabel!
    //@IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var avatarView: UIImageView!
    
    func updateView(user: User) {
        nameLabel.text = user.nickname
        //locationLabel.text = user.location
        //ageLabel.text = user.age
        emailLabel.text = user.email
        
        avatarView.image = user.image
    }
    
}
