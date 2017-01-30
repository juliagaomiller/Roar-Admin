//
//  UserInfoCell.swift
//  Roar-Admin
//
//  Created by Julia Miller on 1/28/17.
//  Copyright © 2017 Julia Miller. All rights reserved.
//

import UIKit

class UsersCell: UITableViewCell {
    
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var lastActiveLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width/2
        self.profileImageView.clipsToBounds = true
    }
    
    func configure(profileImg: UIImage, name: String, email: String, lastActive: String?){
        self.profileImageView.image = profileImg
        self.nameLabel.text = name
        self.emailLabel.text = email
        if let x = lastActive {
            self.lastActiveLabel.text = x
        }
        
    }
    
    //    @IBOutlet var leftLabel: UILabel!
    //    @IBOutlet var rightLabel: UILabel!
    //
    //    func configure(leftText: String, rightText: String){
    //        self.leftLabel.text = leftText
    //        self.rightLabel.text = rightText
    //    }
}
