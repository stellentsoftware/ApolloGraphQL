//
//  ProfileCell.swift
//  ApolloGraphQL
//
//  Created by Venkatrao on 05/12/17.
//  Copyright © 2017 Stellent Soft Pvt Ltd. All rights reserved.
//

import UIKit

class ProfileCell: UITableViewCell {
    
    @IBOutlet var nameLabel:UILabel!
    @IBOutlet var emailLabel:UILabel!
    @IBOutlet var stateLabel:UILabel!
    @IBOutlet var editButton:UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(with user: UserDetails) {
        nameLabel?.text = user.name ?? ""
        emailLabel?.text = user.email ?? ""
        stateLabel?.text = user.state ?? "No state"
    }
}
